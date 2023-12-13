import 'package:flutter/material.dart';

import '../custom_theme/colors.dart';

//Reusable elevated button
class ReusableElevatedButton extends StatelessWidget {
  ReusableElevatedButton(
      {Key? key,
      required this.onPressedFunction,
      required this.buttonText,
      this.buttonColor})
      : super(key: key);

  final onPressedFunction;
  final buttonText;
  late final buttonColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: buttonColor ??= RhrColors.c_app_color,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          textStyle: Theme.of(context).textTheme.subtitle1!.copyWith(
              color: RhrColors.white,
              fontWeight: FontWeight.w400,
              fontSize: 15)),
      onPressed: onPressedFunction,
      child: Text(
        buttonText,
        style: Theme.of(context).textTheme.subtitle1!.copyWith(
            color: Colors.white, fontWeight: FontWeight.w400, fontSize: 15),
      ),
    );
  }
}

