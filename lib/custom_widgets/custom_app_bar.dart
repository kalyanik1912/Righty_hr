import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;
  final Color titleColor;
  final Color foregroundColor;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.backgroundColor = Colors.white,
    this.titleColor = Colors.black,
    this.foregroundColor = Colors.blue,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        title: Text(
          title,
          textAlign: TextAlign.start,
          style: TextStyle(color: titleColor),
        ),
      ),
    );
  }
}
