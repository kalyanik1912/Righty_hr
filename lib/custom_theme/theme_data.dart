import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/utilities.dart';
import 'colors.dart';

final ThemeData customThemeData = _customThemeData();

ThemeData _customThemeData() {
  final baseTheme = ThemeData.light();

  if (baseTheme.brightness == Brightness.dark) {
    RhrColors.loadColor2(false);

    // Dark Theme
    return baseTheme.copyWith(
      primaryColor: RhrColors.mainColor,
      primaryColorDark: RhrColors.white,
      primaryColorLight: RhrColors.black,
      textTheme: TextTheme(
        headline1: TextStyle(
            color: RhrColors.textPrimaryColor,
            fontFamily: Utils.default_font_family),
        headline2: TextStyle(
            color: RhrColors.textPrimaryColor,
            fontFamily: Utils.default_font_family),
        headline3: TextStyle(
            color: RhrColors.textPrimaryColor,
            fontFamily: Utils.default_font_family),
        headline4: TextStyle(
          color: RhrColors.textPrimaryColor,
          fontFamily: Utils.default_font_family,
          fontWeight: FontWeight.w100,
        ),
        headline5: TextStyle(
          color: RhrColors.textPrimaryColor,
          fontFamily: Utils.default_font_family,
          fontWeight: FontWeight.w100,
        ),
        headline6: TextStyle(
          color: RhrColors.textPrimaryColor,
          fontFamily: Utils.default_font_family,
          fontWeight: FontWeight.w600,
        ),
        subtitle1: TextStyle(
            color: RhrColors.textPrimaryColor,
            fontFamily: Utils.default_font_family,
            fontWeight: FontWeight.w600),
        subtitle2: TextStyle(
          color: RhrColors.textPrimaryColor,
          fontFamily: Utils.default_font_family,
          fontWeight: FontWeight.w500,
        ),
        bodyText1: TextStyle(
          color: RhrColors.textPrimaryColor,
          fontFamily: Utils.default_font_family,
          fontWeight: FontWeight.w400,
        ),
        bodyText2: TextStyle(
          color: RhrColors.textPrimaryColor,
          fontFamily: Utils.default_font_family,
          fontWeight: FontWeight.normal,
        ),
        button: TextStyle(
            color: RhrColors.textPrimaryColor,
            fontStyle: FontStyle.normal,
            fontFamily: Utils.default_font_family),
        caption: TextStyle(
            color: RhrColors.textPrimaryLightColor,
            fontFamily: Utils.default_font_family),
        overline: TextStyle(
            color: RhrColors.textPrimaryColor,
            fontFamily: Utils.default_font_family),
      ),
      iconTheme: IconThemeData(color: RhrColors.iconColor),
      // inputDecorationTheme: InputDecorationTheme(
      //   enabledBorder: OutlineInputBorder(
      //       borderSide: BorderSide(color: PsColors.c_main_color, width: 2)),
      //   focusedBorder: OutlineInputBorder(
      //       borderSide: BorderSide(color: PsColors.c_main_color, width: 2)),
      //   errorBorder: OutlineInputBorder(
      //       borderSide: BorderSide(color: PsColors.c_error_color, width: 2)),
      //   focusedErrorBorder: OutlineInputBorder(
      //       borderSide: BorderSide(color: PsColors.c_error_color, width: 2)),
      // ),
      buttonTheme: const ButtonThemeData(
          buttonColor: RhrColors.c_main_color,
          shape: RoundedRectangleBorder(),
          textTheme: ButtonTextTheme.accent),
      appBarTheme: AppBarTheme(color: RhrColors.coreBackgroundColor),
    );
  } else {
    RhrColors.loadColor2(true);
    // White Theme
    return baseTheme.copyWith(
        primaryColor: RhrColors.mainColor,
        primaryColorDark: RhrColors.black,
        primaryColorLight: RhrColors.white,
        backgroundColor: RhrColors.backgroundColor,
        textTheme: TextTheme(
          headline1: TextStyle(
              color: RhrColors.textPrimaryColor,
              fontFamily: Utils.default_font_family),
          headline2: TextStyle(
              color: RhrColors.textPrimaryColor,
              fontFamily: Utils.default_font_family),
          headline3: TextStyle(
              color: RhrColors.textPrimaryColor,
              fontFamily: Utils.default_font_family),
          headline4: TextStyle(
            color: RhrColors.textPrimaryColor,
            fontFamily: Utils.default_font_family,
          ),
          headline5: TextStyle(
              color: RhrColors.textPrimaryColor,
              fontFamily: Utils.default_font_family,
              fontWeight: FontWeight.bold),
          headline6: TextStyle(
              color: RhrColors.textPrimaryColor,
              fontFamily: Utils.default_font_family),
          subtitle1: TextStyle(
              color: RhrColors.textPrimaryColor,
              fontFamily: Utils.default_font_family,
              fontWeight: FontWeight.bold),
          subtitle2: TextStyle(
              color: RhrColors.textPrimaryColor,
              fontFamily: Utils.default_font_family,
              fontWeight: FontWeight.bold),
          bodyText1: TextStyle(
            color: RhrColors.textPrimaryColor,
            fontFamily: Utils.default_font_family,
          ),
          bodyText2: TextStyle(
              color: RhrColors.textPrimaryColor,
              fontFamily: Utils.default_font_family,
              fontWeight: FontWeight.normal),
          button: TextStyle(
              color: RhrColors.textPrimaryColor,
              fontFamily: Utils.default_font_family),
          caption: TextStyle(
              color: RhrColors.textPrimaryLightColor,
              fontFamily: Utils.default_font_family),
          overline: TextStyle(
              color: RhrColors.textPrimaryColor,
              fontFamily: Utils.default_font_family),
        ),
        iconTheme: IconThemeData(color: RhrColors.iconColor),
        buttonTheme: const ButtonThemeData(
            buttonColor: Colors.black,
            shape: RoundedRectangleBorder(),
            textTheme: ButtonTextTheme.primary),
        appBarTheme: AppBarTheme(color: RhrColors.coreBackgroundColor));
  }
}

CupertinoThemeData cupertinoThemeData(CupertinoThemeData baseTheme) {
  if (baseTheme.brightness == Brightness.dark) {
    RhrColors.loadColor2(false);

    // Dark Theme
    return baseTheme.copyWith(
      primaryColor: RhrColors.mainColor,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      barBackgroundColor: Colors.black,
      primaryContrastingColor: Colors.white,
      textTheme: CupertinoTextThemeData(
        textStyle: TextStyle(
            color: RhrColors.textPrimaryColor,
            fontFamily: Utils.default_font_family),
        navLargeTitleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: RhrColors.textPrimaryColor,
          fontFamily: Utils.default_font_family,
        ),
        navTitleTextStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: RhrColors.textPrimaryColor,
            fontFamily: Utils.default_font_family),
        pickerTextStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: RhrColors.textPrimaryColor,
            fontFamily: Utils.default_font_family),
      ),
    );
  } else {
    RhrColors.loadColor2(true);
    // White Theme
    return baseTheme.copyWith(
      primaryColor: RhrColors.mainColor,
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      barBackgroundColor: RhrColors.c_main_color,
      primaryContrastingColor: Colors.black,
      textTheme: CupertinoTextThemeData(
        textStyle: TextStyle(
            color: RhrColors.textPrimaryColor,
            fontFamily: Utils.default_font_family),
        navLargeTitleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: RhrColors.textPrimaryColor,
          fontFamily: Utils.default_font_family,
        ),
        navTitleTextStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: RhrColors.textPrimaryColor,
            fontFamily: Utils.default_font_family),
        pickerTextStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: RhrColors.textPrimaryColor,
            fontFamily: Utils.default_font_family),
      ),
    );
  }
}
