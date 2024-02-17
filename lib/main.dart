import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shoerack/BottonNav.dart';
import 'package:shoerack/Screenone.dart';
import 'package:shoerack/firebase_options.dart';
import 'package:shoerack/home.dart';

void main() async {
  // await fetchProducts();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  products = await fetchProducts();
  print(products);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNav(),
    );
  }
}
