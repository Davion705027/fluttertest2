import 'package:flutter/material.dart';

/**
 * @Author swifter
 * @Date 2023/9/17 18:09
 */
class AppColor {
  static const Color colorPrimary = Color(0xFF657EFF);
  static const Color colorSuccess = Color(0xff1AC157);
  static const Color colorWarning = Color(0xffFEBC04);
  static const Color colorDanger = Color(0xffFF0032);
  static const Color colorInfo = Color(0xff409EFF);
  static const Color colorBetLip = Color(0xFFFE7142);
  static const Color colorTextNormal = Color(0xff131517);
  static const Color colorWhite = Color(0xffffffff);

  //透明
  static const Color colorTransWhite_50 = Color.fromRGBO(255, 255, 255, 0.5);
  static const Color colorTransWhite_20 = Color.fromRGBO(255, 255, 255, 0.2);

  static const Color colorBG1 = Color.fromRGBO(150, 165, 170, 0.15);

  static const Color colorBorder1 = Color(0xff1F2630);
  static const Color colorBorder2 = Color(0xff546371);
  static const Color colorBorder3 = Color(0xff96A5AA);
  static const Color colorBorder4 = Color(0xffDFE4E5);
  static const Color colorBorder5 = Color.fromRGBO(150, 165, 170, 0.15);

  static const Color colorTextPrimaryLight = Color(0xFF1F2630);
  static const Color colorTextSecondaryLight = Color(0xFF333333);
  static const Color colorTextThirdlyLight = Color(0xFF999999);
  static const Color bgColorLight = Color(0xFFEAEEFE);
  static const Color cardBgColorLight = Color(0xfff0f2f3);

  static const Color colorTextPrimaryDark = Color(0xFFDDDDDD);
  static const Color colorTextSecondaryDark = Color(0xFF96A5AA);
  static const Color bgColorDark = Color(0xFF1F2630);
  static const Color cardBgColorDark = Color(0xFF6D7880);

  static const Color profileIconBgColor = Color(0xFF8094F1);
  static const dividerColorLight = Color(0xFFE0E5F7);
  static const dividerColorDark = Color(0xff546371);

  ///投注折叠用的 divider
  static const dividerColorExpansion = Color(0xFFE3E5EC);

  static const primaryHintText = Color(0xFF9BA0C1);
  static const Color colorLeftBtnTop = Color(0xFFEEF1FF);
  static const Color colorLeftBtnBottom = Color(0xFFDADFFF);
  static const Color colorTitle = Color(0xFF536589);
  static const Color colorSubtitle = Color(0xFF969799);
  static const Color colorDivider = Color(0xFFE5E9F8);
  static const Color colorInactiveTrack = Color(0xFFF8F8F8);
}

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}

Color hexToRGBO(String code, [double opacity = 1]) {
  final int r = int.parse(code.substring(1, 3), radix: 16);
  final int g = int.parse(code.substring(3, 5), radix: 16);
  final int b = int.parse(code.substring(5, 7), radix: 16);
  return Color.fromRGBO(r, g, b, opacity);
}

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}
