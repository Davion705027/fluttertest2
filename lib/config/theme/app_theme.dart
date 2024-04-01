import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:lottery/generated/fonts.gen.dart';

import 'app_color.dart';

class AppTheme {
  static ThemeData createTheme({
    required Brightness brightness,
    required Color background,
    required Color primaryTextColor,
    required Color labelTextColor,
    required Color primaryColor,
    required Color cardBgColor,
    required Color divider,
    required String fontFamily,
  }) {
    final baseTextTheme = brightness == Brightness.dark
        ? Typography.blackMountainView
        : Typography.whiteMountainView;

    return ThemeData(
      brightness: brightness,
      canvasColor: background,
      cardColor: background,
      dividerColor: divider,
      fontFamily: fontFamily,
      primarySwatch: createMaterialColor(primaryColor),
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      dividerTheme: DividerThemeData(
        color: divider,
        indent: 20,
        endIndent: 20,
        space: 1,
        thickness: 1,
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.transparent,
      ),
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: createMaterialColor(primaryColor),
        // primaryColorDark: primaryColor,
        accentColor: primaryColor,
        backgroundColor: background,
        brightness: brightness,
      ),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.all(Colors.white),
        trackColor: MaterialStateProperty.all(AppColor.colorPrimary),
        trackOutlineColor:
            MaterialStateProperty.all(Colors.grey.withOpacity(0.3)),
        trackOutlineWidth: MaterialStateProperty.all(2),
      ),
      tabBarTheme: TabBarTheme(
          labelColor: primaryTextColor,
          unselectedLabelColor: labelTextColor,
          labelStyle: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
          indicatorSize: TabBarIndicatorSize.label,
          unselectedLabelStyle: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
          dividerColor: Colors.transparent),
      splashFactory: NoSplash.splashFactory,
      primaryColor: primaryColor,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      scaffoldBackgroundColor: background,
      drawerTheme: DrawerThemeData(
        elevation: 0,
        backgroundColor: background,
        width: 0.7.sw,
      ),
      inputDecorationTheme: InputDecorationTheme(
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: const BorderSide(style: BorderStyle.none),
        ),
        focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: const BorderSide(style: BorderStyle.none),
        ),
        labelStyle: TextStyle(
          color: labelTextColor,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
        ),
        hintStyle: TextStyle(
          color: labelTextColor,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
      cardTheme: CardTheme(
        color: cardBgColor,
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 0,
      ),
      textTheme: TextTheme(
        displayLarge: baseTextTheme.displayLarge?.copyWith(
          fontSize: 40.sp,
          color: primaryTextColor,
          fontWeight: FontWeight.w600,
        ),
        displaySmall: baseTextTheme.displaySmall?.copyWith(
          fontSize: 25.sp,
          color: primaryTextColor,
          fontWeight: FontWeight.w600,
        ),
        titleLarge: baseTextTheme.titleLarge?.copyWith(
          fontSize: 17.sp,
          color: primaryTextColor,
          fontWeight: FontWeight.w700,
        ),
        titleMedium: baseTextTheme.titleMedium?.copyWith(
          fontSize: 12.sp,
          color: AppColor.colorTitle,
          fontWeight: FontWeight.bold,
        ),
        titleSmall: baseTextTheme.titleSmall?.copyWith(
          fontSize: 11.sp,
          color: AppColor.colorSubtitle,
        ),
        bodyLarge: baseTextTheme.bodyLarge?.copyWith(
          fontSize: 14.sp,
          color: primaryTextColor,
        ),
        bodyMedium: baseTextTheme.bodyMedium?.copyWith(
          fontSize: 13.sp,
          color: primaryTextColor,
        ),
        bodySmall: baseTextTheme.bodySmall?.copyWith(
          fontSize: 12.sp,
          color: primaryTextColor,
        ),
        labelLarge: baseTextTheme.labelLarge?.copyWith(
          fontSize: 13.sp,
          color: labelTextColor,
        ),
        labelMedium: baseTextTheme.labelMedium?.copyWith(
          fontSize: 12.sp,
          color: labelTextColor,
        ),
        labelSmall: baseTextTheme.labelSmall?.copyWith(
          fontSize: 11.sp,
          color: labelTextColor,
        ),
      ),
    );
  }

  static ThemeData get light => createTheme(
        brightness: Brightness.light,
        background: AppColor.bgColorLight,
        primaryTextColor: AppColor.colorTextPrimaryLight,
        primaryColor: AppColor.colorPrimary,
        cardBgColor: AppColor.cardBgColorLight,
        divider: AppColor.dividerColorLight,
        labelTextColor: AppColor.colorTextSecondaryLight,
        fontFamily: 'PingFang SC Bold',
      );

  static ThemeData get dark => createTheme(
        brightness: Brightness.dark,
        background: AppColor.bgColorDark,
        primaryTextColor: AppColor.colorTextPrimaryDark,
        primaryColor: AppColor.colorPrimary,
        cardBgColor: AppColor.cardBgColorDark,
        divider: AppColor.dividerColorDark,
        labelTextColor: AppColor.colorTextPrimaryDark,
        fontFamily: 'PingFang SC Bold',
      );
}
