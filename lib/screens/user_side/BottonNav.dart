import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:shoerack/screens/user_side/Favourite.dart';
import 'package:shoerack/screens/user_side/home.dart';
import 'package:shoerack/screens/user_side/notification.dart';
import 'package:shoerack/screens/user_side/proflie.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    List pages = [
      const HomePage(),
      FavoritesPage(),
      const NotificationPage(),
      ProfilePage(),
    ];

    return SafeArea(
      child: Scaffold(
        body: pages[myIndex],
        bottomNavigationBar: CurvedNavigationBar(
          animationDuration: const Duration(milliseconds: 300),
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          items: const [
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
