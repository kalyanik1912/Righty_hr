import 'package:flutter/material.dart';

import '../utils/utilities.dart';

class RhrColors {
  RhrColors._();

  static const Color primaryColor = Color(0xFF000000);
  static const Color primaryColor_light = Color(0xffa3a3a3);

  ///
  /// Main Color
  ///
  static Color? appColor;
  static Color? mainColor;
  static Color? mainColorWithWhite;
  static Color? mainColorWithBlack;
  static Color? mainDarkColor;
  static Color? mainLightColor;
  static Color? mainLightColorWithBlack;
  static Color? mainLightColorWithWhite;
  static Color? mainShadowColor;
  static Color? mainLightShadowColor;
  static Color? mainDividerColor;
  static Color? whiteColorWithBlack;
  static Color? greenCyanColor;
  static Color? greenCyanLightColor;
  static Color? cyanLightColor;
  static Color? orangeColor;

  ///
  /// Base Color
  ///
  static Color? baseColor;
  static Color? baseDarkColor;
  static Color? baseLightColor;

  ///
  /// Text Color
  ///
  static Color? textPrimaryColor;
  static Color? textPrimaryDarkColor;
  static Color? textPrimaryLightColor;

  ///
  /// Icon Color
  ///
  static Color? iconColor;

  ///
  /// Background Color
  ///
  static Color? coreBackgroundColor;
  static Color? backgroundColor;

  ///
  /// General
  ///
  static Color? white;
  static Color? black;
  static Color? grey;
  static Color? transparent;

  ///
  /// Customs
  ///
  static Color? facebookLoginButtonColor;
  static Color? googleLoginButtonColor;
  static Color? appleLoginButtonColor;
  static Color? phoneLoginButtonColor;
  static Color? disabledFacebookLoginButtonColor;
  static Color? disabledGoogleLoginButtonColor;
  static Color? disabledAppleLoginButtonColor;
  static Color? disabledPhoneLoginButtonColor;

  static Color? categoryBackgroundColor;
  static Color? loadingCircleColor;
  static Color? ratingColor;

  /// Colors Config For the whole App
  /// Please change the color based on your brand need.

  ///
  /// Light Theme
  ///
  static const Color _l_base_color = Color(0xFEFAFAFA);
  static const Color _l_base_dark_color = Color(0xFFFFFFFF);
  static const Color _l_base_light_color = Color(0xFFEFEFEF);

  static const Color _l_text_primary_color = Colors.black;
  static const Color _l_text_primary_light_color = Color(0xFFadadad);
  static const Color _l_text_primary_dark_color = Color(0xFF25425D);

  static const Color _l_icon_color = Color(0xFF445E76);

  static const Color _l_divider_color = Color(0x15505050);

  ///
  /// Dark Theme
  ///
  static const Color _d_base_color = Color(0xFF212121);
  static const Color _d_base_dark_color = Color(0xFF303030);
  static const Color _d_base_light_color = Color(0xFF454545);

  static const Color _d_text_primary_color = Color(0xFFFFFFFF);
  static const Color _d_text_primary_light_color = Color(0xFFFFFFFF);
  static const Color _d_text_primary_dark_color = Color(0xFFFFFFFF);

  static const Color _d_icon_color = Colors.white;

  static const Color _d_divider_color = Color(0x1FFFFFFF);

  ///
  /// Common Theme
  ///
  static const Color c_app_color = Color(0xFF254099);
  static const Color c_green_color = Color(0xFF3BB249);
  static const Color c_green_cyan_light_color = Color(0xFF33D4B5);
  static const Color c_cyan_light_color = Color(0xFF1ABC9C);
  static const Color c_orange_color = Color(0xFFFF7900);
  static const Color c_main_color = Color(0xFFF67F21);
  static const Color c_main_light_color = Color(0xFFF6A868);
  static const Color c_error_color = Color(0xFFFB4C2F);

  static const Color _c_white_color = Colors.white;
  static const Color _c_black_color = Colors.black;
  static const Color _c_grey_color = Colors.grey;
  static const Color _c_blue_color = Colors.blue;
  static const Color _c_transparent_color = Colors.transparent;

  static const Color _c_facebook_login_color = Color(0xFF2153B2);
  static const Color _c_google_login_color = Color(0xFFFF4D4D);
  static const Color _c_phone_login_color = Color(0xFF9F7A2A);
  static const Color _c_apple_login_color = Color(0xFF111111);

  static const Color _c_rating_color = Colors.yellow;

  static const Color ps_ctheme__color_about_us = Colors.cyan;
  static const Color ps_light_grey = Color(0x599BA9AA);
  static const Color ps_ctheme__color_application = Colors.blue;
  static const Color ps_ctheme__color_line = Color(0xFFbdbdbd);
  static const Color ps_grey_light = Color(0xFFF6F6F6);
  static const Color ps_background_grey = Color(0xFFE5E5E5);
  static const Color ps_divider_color = Color(0xFFEBECF1);
  static const Color ps_black80 = Color(0xFF333333);
  static const Color ps_unreadNtf = Color(0xFFECF2FF);
  static const Color ps_disabled_button = Color(0xFF809ABE);

  static void loadColor(BuildContext context) {
    if (Utils.isLightMode(context)) {
      _loadLightColors();
    } else {
      _loadDarkColors();
    }
  }

  static void loadColor2(bool isLightMode) {
    if (isLightMode) {
      _loadLightColors();
    } else {
      _loadDarkColors();
    }
  }

  static void _loadDarkColors() {
    ///
    /// Main Color
    ///
    mainColor = c_main_color;
    mainColorWithWhite = Colors.white;
    mainColorWithBlack = Colors.black;
    mainDarkColor = c_error_color;
    mainLightColor = c_main_light_color;
    mainLightColorWithBlack = _d_base_color;
    mainLightColorWithWhite = Colors.white;
    mainShadowColor = Colors.black.withOpacity(0.5);
    mainLightShadowColor = Colors.black.withOpacity(0.5);
    mainDividerColor = _d_divider_color;
    whiteColorWithBlack = Colors.black;

    ///
    /// Base Color
    ///
    baseColor = _d_base_color;
    baseDarkColor = _d_base_dark_color;
    baseLightColor = _d_base_light_color;

    ///
    /// Text Color
    ///
    textPrimaryColor = _d_text_primary_color;
    textPrimaryDarkColor = _d_text_primary_dark_color;
    textPrimaryLightColor = _d_text_primary_light_color;

    ///
    /// Icon Color
    ///
    iconColor = _d_icon_color;

    ///
    /// Background Color
    ///
    coreBackgroundColor = _d_base_color;
    backgroundColor = _d_base_dark_color;

    ///
    /// General
    ///
    white = _c_white_color;
    black = _c_black_color;
    grey = _c_grey_color;
    transparent = _c_transparent_color;

    ///
    /// Custom
    ///
    facebookLoginButtonColor = _c_facebook_login_color;
    googleLoginButtonColor = _c_google_login_color;
    appleLoginButtonColor = _c_apple_login_color;
    phoneLoginButtonColor = _c_phone_login_color;
    disabledFacebookLoginButtonColor = _c_grey_color;
    disabledGoogleLoginButtonColor = _c_grey_color;
    disabledAppleLoginButtonColor = _c_grey_color;
    disabledPhoneLoginButtonColor = _c_grey_color;
    categoryBackgroundColor = _d_base_light_color;
    loadingCircleColor = _c_blue_color;
    ratingColor = _c_rating_color;
  }

  static void _loadLightColors() {
    ///
    /// Main Color
    ///
    mainColor = c_main_color;
    mainColorWithWhite = c_main_color;
    mainColorWithBlack = c_main_color;
    mainDarkColor = c_error_color;
    mainLightColor = c_main_light_color;
    mainLightColorWithBlack = c_main_light_color;
    mainLightColorWithWhite = c_main_light_color;
    mainShadowColor = c_main_color.withOpacity(0.6);
    mainLightShadowColor = c_main_light_color;
    mainDividerColor = _l_divider_color;
    whiteColorWithBlack = _c_white_color;
    greenCyanColor = c_green_color;
    greenCyanLightColor = c_green_cyan_light_color;
    cyanLightColor = c_cyan_light_color;
    orangeColor = c_orange_color;
    appColor = c_app_color;

    ///
    /// Base Color
    ///
    baseColor = _l_base_color;
    baseDarkColor = _l_base_dark_color;
    baseLightColor = _l_base_light_color;

    ///
    /// Text Color
    ///
    textPrimaryColor = _l_text_primary_color;
    textPrimaryDarkColor = _l_text_primary_dark_color;
    textPrimaryLightColor = _l_text_primary_light_color;

    ///
    /// Icon Color
    ///
    iconColor = _l_icon_color;

    ///
    /// Background Color
    ///
    coreBackgroundColor = _l_base_color;
    backgroundColor = _l_base_dark_color;

    ///
    /// General
    ///
    white = _c_white_color;
    black = _c_black_color;
    grey = _c_grey_color;
    transparent = _c_transparent_color;

    ///
    /// Custom
    ///
    facebookLoginButtonColor = _c_facebook_login_color;
    googleLoginButtonColor = _c_google_login_color;
    appleLoginButtonColor = _c_apple_login_color;
    phoneLoginButtonColor = _c_phone_login_color;
    disabledFacebookLoginButtonColor = _c_grey_color;
    disabledGoogleLoginButtonColor = _c_grey_color;
    disabledAppleLoginButtonColor = _c_grey_color;
    disabledPhoneLoginButtonColor = _c_grey_color;
    categoryBackgroundColor = c_main_light_color;
    loadingCircleColor = _c_blue_color;
    ratingColor = _c_rating_color;
  }
}
