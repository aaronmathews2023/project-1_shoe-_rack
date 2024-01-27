import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shoerack/page1.dart';

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
    gotoLogin();
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
          Lottie.network(
              "https://lottie.host/d4ddafb3-1a7c-4e7b-9ba4-e2f5111f9289/p792GNxuc2.json",
              repeat: true,
              reverse: true,
              controller: _controller, onLoaded: (compos) {
            _controller
              ..duration = compos.duration
              ..reset()
              ..forward();
          }),
          Center(
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

  Future<void> gotoLogin() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => Page1()));
  }
}
