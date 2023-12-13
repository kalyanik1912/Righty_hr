import 'package:flutter/material.dart';

import '../../utils/strings.dart';
import 'JobDetailsTab.dart';
import 'PersonalDetailsTab.dart';

class MyInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(Strings.my_info),
          bottom: const TabBar(
            tabs: [
              Tab(text: Strings.personal),
              Tab(text: Strings.job),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PersonalDetailsTab(),
            JobDetailsTab(),
          ],
        ),
      ),
    );
  }
}
