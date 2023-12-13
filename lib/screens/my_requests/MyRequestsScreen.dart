
import 'package:flutter/material.dart';

import '../../utils/strings.dart';
import 'ExpensesTab.dart';
import 'InvoicesTab.dart';



class MyRequestsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text(Strings.my_requests),
          bottom: const TabBar(
            tabs: [
              Tab(text: Strings.expenses),
              Tab(text: Strings.invoices),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ExpensesTab(),
            InvoicesTab()
          ],
        ),
      ),
    );
  }
}

