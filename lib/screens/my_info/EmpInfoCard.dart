import 'package:flutter/material.dart';

class EmpInfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Card(
        elevation: 2.0,
        margin: EdgeInsets.symmetric(vertical: 5.0),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30.0,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
              ),
              title: Text("Jagadeesh \nGumpena"),
              trailing: Text("REPORTING TO \nNageswara rao V"),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ));
  }
}
