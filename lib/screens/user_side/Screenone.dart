import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shoerack/screens/admin/AdminHomePage.dart';
import 'package:shoerack/screens/user_side/BottonNav.dart';
import 'package:shoerack/screens/user_side/page1.dart';

class Screenone extends StatefulWidget {
  const Screenone({super.key});

  @override
  State<Screenone> createState() => _ScreenoneState();
}

class _ScreenoneState extends State<Screenone> with TickerProviderStateMixin {
  late final AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    checkLogin();
  }

  checkLogin() {
    Future.delayed(const Duration(seconds: 3), () {
      if (FirebaseAuth.instance.currentUser != null) {
        determineUserRoleAndNavigate();
      } else {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const Page1()));
      }
    });
  }

  determineUserRoleAndNavigate() {
    if (FirebaseAuth.instance.currentUser!.email == 'aaron1@gmail.com') {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => AdminHomePage()));
    } else {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => BottomNav()));
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset("asset/Animation - 1706187278042 (2).json",
              repeat: true,
              reverse: true,
              controller: _controller, onLoaded: (compos) {
            _controller
              ..duration = compos.duration
              ..reset()
              ..forward();
          }),
          const Center(
            child: Text(
              "Shoe Rack",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          )
        ],
      ),
    ));
  }
}
