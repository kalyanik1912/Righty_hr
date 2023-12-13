import 'package:flutter/material.dart';

import '../../custom_widgets/custom_app_bar.dart';
import '../../custom_widgets/custom_dashboard_card.dart';
import '../../utils/strings.dart';
import '../active_employees.dart';


class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: Strings.dashboard,),
    body: SingleChildScrollView(
      child: Column(
        children: [

          CustomDashboardCard(
            title: Strings.personal_info,
            icon: Icons.person,
            onTap: () {
              // Handle onTap
            }, content: '100',
          ),

          CustomDashboardCard(
            title: Strings.active_employees,
            icon: Icons.people_outline,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ActiveEmployeesScreen(),
                ),
              );
            },content: '100',
          ),
          CustomDashboardCard(
            title: Strings.expenses,
            icon: Icons.money,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ActiveEmployeesScreen(),
                ),
              );
            },content: '100',
          ), CustomDashboardCard(
            title: Strings.invoices,
            icon: Icons.payments,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ActiveEmployeesScreen(),
                ),
              );
            },content: '100',
          ),
        ],
      ),
    ),
    );
  }
}

