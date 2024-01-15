import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';

class AppMqtt {
  // 单利
  static AppMqtt? _instance;
  late final MqttServerClient _client;

  static AppMqtt instance() {
    _instance ??= AppMqtt._();
    return _instance!;
  }

  AppMqtt._() {
    _client = MqttServerClient('wss://wss-fat.emkcp.com/mqtt', '');
    _client.port = 443;
    // _client = MqttServerClient('wss://wss-fat.emkcp.com:443/mqtt', '');
    // _client.port = 443;
    _client.logging(on: true);
    _client.useWebSocket = true; //
    _client.setProtocolV31(); // protocol版本
    _client.keepAlivePeriod = 60;
    _client.autoReconnect = true;
    _client.onDisconnected = _onDisConnected;
    _client.onConnected = _onConnected;
    // _client.maxConnectionAttempts = 1000;
    // _client.onSubscribed = _onSubscribed;
    // _client.onUnsubscribed = _onUnsubscribed;

    final connMessage = MqttConnectMessage()
        // .authenticateAs(appEnv.mqtt_name, appEnv.mqtt_password)
        .withClientIdentifier('mqttjs_f45f1586')
        .withWillTopic('willtopic')
        .withWillMessage('My Will message')
        .startClean()
        .withWillQos(MqttQos.atLeastOnce);
    _client.connectionMessage = connMessage;
  }

  /// 链接
  connect() async {
    try {
      await _client.connect();

      for (var element in [
        'BORACAY_UNICAST_MEMBER_TOPIC|bob|1720700175153889360',
        'SABANG_BROADCAST_MEMBIC'
      ]) {
        _client.subscribe(element, MqttQos.atLeastOnce);
      }

      _listen();
    } catch (e) {
      Get.log('mqtt connect error $e');
    }
  }

  /// 数据变化
  _listen() {
    _client.updates?.listen((List<MqttReceivedMessage<MqttMessage>> c) {
      final recMess = c[0].payload as MqttPublishMessage;
      final pt =
          MqttPublishPayload.bytesToStringAsString(recMess.payload.message);
      final topic = c[0].topic;
      Get.log('mqtt message topic - ${c[0].topic} payload - $pt');
    }, onError: (e) {
      Get.log('mqtt error $e');
    }, onDone: () {
      Get.log('mqtt done');
    }, cancelOnError: false);
  }

  /// 订阅
  subscribe(String topic) {
    _client.subscribe(topic, MqttQos.atLeastOnce);
  }

  /// 取消订阅
  unsubscribe(String topic) {
    _client.unsubscribe(topic);
  }
}

extension AppMqttx on AppMqtt {
  _onConnected() {
    Get.log('mqtt connected');
    Get.snackbar('mqtt connected', 'connected');
  }

  _onDisConnected() {
    Get.log('mqtt disconnected');
    Get.snackbar('mqtt disconnected', 'disconnected');
  }

  _onSubscribed(String? topic) {
    Get.log('mqtt subscribed $topic');
  }

  _onUnsubscribed(String? topic) {
    Get.log('mqtt unsubscribed $topic');
  }
}
