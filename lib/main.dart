import 'dart:ui';
import 'package:happyholidays/services/data_base.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:happyholidays/services/data_base.dart';
// import ' package:flutter/rendering.dart';
import '../pages/pages.dart';
import 'package:firebase_database/firebase_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HappyHoliday(),
      debugShowCheckedModeBanner: false,
    );
  }
}
