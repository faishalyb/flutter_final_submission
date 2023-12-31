import 'package:final_submission/dashboard/recyle_screen.dart';
import 'package:final_submission/rest/auth.dart';
import 'package:final_submission/dashboard/profile_screen.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';


class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
    final AuthService authService = AuthService();
    int _currentIndex = 0;

    final List<Widget> _screens = [
      Home_Screen(),
      Recycle_Screen(),
      Profile_Screen()
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.recycling),
            label: 'Recycle',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
