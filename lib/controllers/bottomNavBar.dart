import 'package:flutter/material.dart';

import '../screens/account/accountPage.dart';
import '../screens/feed/feedPage.dart';
import '../screens//home/homePage.dart';
import '../screens/notification/notificationPage.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key key}) : super(key: key);

  @override
  _BottomNavBarSFWState createState() => _BottomNavBarSFWState();
}

//
class _BottomNavBarSFWState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _selectedPage = <Widget>[
    HomePage(),
    FeedPage(),
    NotificationPage(),
    AccountPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _selectedPage[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',),
          BottomNavigationBarItem(
            icon: Icon(Icons.rss_feed_rounded), label: 'Feed',),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_important_rounded),
            label: 'Notification',),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded), label: 'Account',),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey[500],
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}