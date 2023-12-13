import 'dart:convert';
import 'package:another_flushbar/flushbar.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

import '../custom_theme/colors.dart';

class Utils {
  Utils._();

//for android check light theme
  static bool isLightMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light;
  }

  static const String default_font_family = 'Poppins';

  //Display normal toast
  static displayToastMessage(String? message) {
    Fluttertoast.showToast(msg: message!);
  }

  //Display error toast
  static displayErrorToastMessage(String? message) {
    Fluttertoast.showToast(
        msg: message!, textColor: Colors.white, backgroundColor: Colors.red);
  }

  //Display center toast
  static displayCenterToast(String? message) {
    Fluttertoast.showToast(msg: message!, gravity: ToastGravity.CENTER);
  }

  //Display Flush bar below app bar: success
  static displaySuccessTopFlushBar(String? message, BuildContext context) {
    return Flushbar(
      flushbarPosition: FlushbarPosition.TOP,
      backgroundColor: Colors.black54,
      message: message!,
      duration: const Duration(seconds: 3),
      icon: const Icon(
        FluentIcons.checkmark_circle_24_filled,
        color: Colors.green,
      ),
      margin: const EdgeInsets.only(top: 55),
    ).show(context);
  }

  //Display Flush bar below app bar: error
  static displayErrorTopFlushBar(String? message, BuildContext context) {
    return Flushbar(
      flushbarPosition: FlushbarPosition.TOP,
      backgroundColor: Colors.black54,
      message: message!,
      duration: const Duration(seconds: 3),
      icon: const Icon(
        FluentIcons.error_circle_24_filled,
        color: RhrColors.c_error_color,
      ),
      margin: const EdgeInsets.only(top: 55),
    ).show(context);
  }
  //Display toast notification
  static displayToastNotification(String? message) {
    Fluttertoast.showToast(msg: message!, gravity: ToastGravity.TOP);
  }

  //Launch url
  static launchUrl(url) async {
    // ignore: deprecated_member_use
    await launch(url);
  }

  //Displaying date in required format as per the designs
  static returnFormattedDate(iso) {
    if (iso != "N/A") {
      try {
        var date = DateTime.parse(iso).toLocal();
        String day;
        if (date.day < 10) {
          day = "0" + date.day.toString();
        } else {
          day = date.day.toString();
        }
        String month;
        if (date.month < 10) {
          month = "0" + date.month.toString();
        } else {
          month = date.month.toString();
        }

        return month.toString() +
            "-" +
            day.toString() +
            "-" +
            date.year.toString();
      } catch (e) {
        return iso;
      }
    } else {
      return iso;
    }
  }

  Future<void> checkInternetConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());

    if (connectivityResult == ConnectivityResult.none) {
      // No internet connection
      print('No internet connection');
    } else if (connectivityResult == ConnectivityResult.mobile) {
      // Mobile network connection
      print('Mobile network connection');
    } else if (connectivityResult == ConnectivityResult.wifi) {
      // Wi-Fi connection
      print('Wi-Fi connection');
    }
  }

  static String utf8convert(String text) {
    List<int> bytes = text.toString().codeUnits;
    return utf8.decode(bytes);
  }
}
