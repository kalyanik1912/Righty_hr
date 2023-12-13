import 'package:flutter/material.dart';
class CustomCard extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  CustomCard({
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(15.0, 7.5, 15, 7.5),
      elevation: 5.0,
      child: ListTile(onTap: onPressed,
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: Icon(Icons.arrow_right),
      ),
    );
  }
}