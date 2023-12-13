import 'package:flutter/material.dart';

import '../menu/MenuScreen.dart';
import '../my_info/MyInfoScreen.dart';
import '../my_requests/MyRequestsScreen.dart';
import '../my_work/TimesheetPage.dart';
import 'DashboardScreen.dart';

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NavigationExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({Key? key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;
  final List<Widget> screens = [
    DashboardScreen(),
    MyInfoScreen(),
    TimesheetPage(),
    MyRequestsScreen(),
    MenuScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        backgroundColor: Colors.blueAccent,
        indicatorColor: Colors.white,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon:
                Icon(Icons.dashboard_outlined, color: Colors.blueAccent),
            icon: Icon(Icons.dashboard_outlined, color: Colors.white),
            label: '',
          ),
          NavigationDestination(
            selectedIcon:
                Icon(Icons.person_2_outlined, color: Colors.blueAccent),
            icon: Icon(Icons.person_2_outlined, color: Colors.white),
            label: '',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.access_time, color: Colors.blueAccent),
            icon: Icon(Icons.access_time, color: Colors.white),
            label: '',
          ),
          NavigationDestination(
            selectedIcon:
                Icon(Icons.file_copy_outlined, color: Colors.blueAccent),
            icon: Icon(Icons.file_copy_outlined, color: Colors.white),
            label: '',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.menu, color: Colors.blueAccent),
            icon: Icon(Icons.menu, color: Colors.white),
            label: '',
          ),
        ],
      ),
      body: screens[currentPageIndex],
    );
  }
}
