import 'package:flutter/material.dart';

class CustomDashboardCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final String content;
  final VoidCallback onTap;

  CustomDashboardCard({
    required this.title,
    required this.icon,
    required this.content,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 16.0),
                  ),

                  SizedBox(width: 16.0),
                  Text(
                    content,
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
              Icon(icon, size: 24.0),
            ],
          ),
        ),
      ),
    );
  }
}
