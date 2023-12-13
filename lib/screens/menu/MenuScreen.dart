import 'package:flutter/material.dart';

import '../active_employees.dart';
import '../pending_approvals/PendingApprovals.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: CircleAvatar(
          child: Image.asset(
            'assets/images/snad_logo_vertical.png', // Replace with your logo image path
            width: 40.0,
            height: 40.0,
            fit: BoxFit.contain,
            semanticLabel: 'App Logo',
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // Container(
          //   padding: EdgeInsets.all(16.0),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Image.asset(
          //         'assets/images/snad_logo_vertical.png', // Replace with your logo image path
          //         width: 60.0,
          //         height: 60.0,
          //         fit: BoxFit.contain,
          //         semanticLabel: 'App Logo',
          //       ),
          //       CircleAvatar(
          //         child: Icon(
          //           Icons.person,
          //           color: Colors.black,
          //         ),
          //         radius: 30.0,
          //         backgroundColor: Colors.blue,
          //       ),
          //     ],
          //   ),
          // ),
          // Divider(
          //   thickness: 1.0,
          // ),
          ListTile(
            title: const Text(
              'Active Employees',
              style: TextStyle(fontSize: 16.0),
            ),
            leading: const Icon(Icons.people_outline,
                size: 24.0, color: Colors.black),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ActiveEmployeesScreen(),
                ),
              );
            },
          ),
          const ListTile(
            title: Text(
              'Time Off',
              style: TextStyle(fontSize: 16.0),
            ),
            leading:
                Icon(Icons.timer_off_outlined, size: 24.0, color: Colors.black),
          ),
          ListTile(
            title: const Text(
              'Pending Approvals',
              style: TextStyle(fontSize: 16.0),
            ),
            leading: const Icon(Icons.pending_actions,
                size: 24.0, color: Colors.black),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PendingApprovalsScreen(),
                ),
              );
            },
          ),
          const Expanded(child: SizedBox()), // Spacer
          const ListTile(
            title: Text(
              'Logout',
              style: TextStyle(fontSize: 16.0),
            ),
            leading: Icon(Icons.logout, size: 24.0, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
