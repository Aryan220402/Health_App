import 'package:flutter/material.dart';
import 'package:healthapp/Calendar.dart';
import 'package:healthapp/Chat.dart';
import 'package:healthapp/Profile.dart';
import 'package:healthapp/home_page.dart';

class NavBar extends StatefulWidget {

 const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  Widget? _child;
  int zero=0;
  @override
  void initState() {
    _child = const HomePage();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
      _child,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: zero,
        onTap: _handleNavigationChange,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon:Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(icon:Icon(Icons.calendar_month_outlined), label: "Calendar"),
          BottomNavigationBarItem(icon:Icon(Icons.chat_bubble_outline), label: "Chats"),
          BottomNavigationBarItem(icon:Icon(Icons.person_2_outlined), label: "Profile"),
        ],
      ),
    );

  }

  void _handleNavigationChange(int index) {
    setState(() {
      switch (index) {
        case 0:
          _child = const HomePage();
          zero=0;
          break;
        case 1:
          _child = const Calendar();
          zero=1;
          break;
        case 2:
          _child = const Chat();
          zero=2;
          break;
        case 3:
          _child = const Profile();
          zero=3;
          break;
      }
      _child = AnimatedSwitcher(
        switchInCurve: Curves.easeOut,
        switchOutCurve: Curves.easeIn,
        duration: const Duration(milliseconds: 500),
        child: _child,
      );
    });
  }
}

