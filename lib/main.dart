// ignore_for_file: unnecessary_import

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:shoerack/db/model/data_model.dart';
import 'package:shoerack/db/model/fav_function.dart';

import 'package:shoerack/screens/user_side/Screenone.dart';
import 'package:shoerack/firebase_auth_implementation/firebase_options.dart';

void main() async {
  // await fetchProducts();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(ProducthiveAdapter().typeId)) {
    Hive.registerAdapter(ProducthiveAdapter());
  }

  await GetFav();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screenone(),
    );
  }
}
