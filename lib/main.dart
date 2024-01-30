import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shoerack/Screenone.dart';
import 'package:shoerack/firebase_options.dart';

void main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Screenone(),
    );
  }
}
