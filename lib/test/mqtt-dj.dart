import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';

class AppMqttDJ {
  // 单利
  static AppMqttDJ? _instance;
  late final MqttServerClient _client;

  static AppMqttDJ instance() {
    _instance ??= AppMqttDJ._();
    return _instance!;
  }

  AppMqttDJ._() {
    _client =
        MqttServerClient('wss://pro-dj-aws-mqtt.qxbc09w9.com:8084/mqtt', '');
    _client.logging(on: true);
    _client.port = 8084; //必须带的关键参数，否则报错。
    _client.useWebSocket = true; //必须带的关键参数
    _client.setProtocolV31(); //必须带的关键参数
    _client.keepAlivePeriod = 60;
    _client.autoReconnect = true;
    _client.onDisconnected = _onDisConnected;
    _client.onConnected = _onConnected;

    final connMessage = MqttConnectMessage()
        .authenticateAs('admin', 'Qazqaz123...')
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
        'SABANG_BROADCAST_MEMBER_TOPIC'
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

extension AppMqttx on AppMqttDJ {
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
