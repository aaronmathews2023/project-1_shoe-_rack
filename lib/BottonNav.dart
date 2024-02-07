import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:shoerack/Favourite.dart';
import 'package:shoerack/home.dart';
import 'package:shoerack/notification.dart';
import 'package:shoerack/proflie.dart';

class BottomNav extends StatefulWidget {
  BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    List pages = [
      HomePage(),
      FavouritePage(),
      NotificationPage(),
      ProfilePage(),
    ];

    return SafeArea(
      child: Scaffold(
        body: pages[myIndex],
        bottomNavigationBar: CurvedNavigationBar(
          animationDuration: Duration(milliseconds: 300),
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          items: [
            Icon(Icons.home),
            Icon(Icons.favorite),
            Icon(Icons.notification_add),
            Icon(Icons.person),
          ],
        ),
      ),
    );
  }
}
