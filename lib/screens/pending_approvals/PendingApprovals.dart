import 'package:flutter/material.dart';

import '../../custom_widgets/custom_app_bar.dart';
import '../../custom_widgets/custom_card.dart';
import '../../utils/strings.dart';


class PendingApprovalsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Strings.pending_approvals,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomCard(
              title: 'Expenses',
              onPressed: () {
                // Handle click on Expenses card
              },
            ),
            CustomCard(
              title: 'Invoices',
              onPressed: () {
                // Handle click on Invoices card
              },
            ),
            CustomCard(
              title: 'Timesheet',
              onPressed: () {
                // Handle click on Timesheet card
              },
            ),
            CustomCard(
              title: 'Timesheet Withdrawal Requests',
              onPressed: () {
                // Handle click on Timesheet Withdrawal Requests card
              },
            ),
            CustomCard(
              title: 'Time Off',
              onPressed: () {
                // Handle click on Time Off card
              },
            ),
          ],
        ),
      ),
    );
  }
}


