
import 'package:flutter/material.dart';

class AdminHomePage extends StatefulWidget {
  const AdminHomePage({super.key});

  @override
  State<AdminHomePage> createState() => _HomePageState();
}

class _HomePageState extends State<AdminHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Adim page",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),)
        ],
      ),
    );
  }
}