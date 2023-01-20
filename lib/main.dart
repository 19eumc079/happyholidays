import 'dart:ui';

import 'package:flutter/material.dart';
// import ' package:flutter/rendering.dart';
import '../pages/pages.dart';
 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
 
      home: HappyHoliday( 

      ),
      debugShowCheckedModeBanner: false,
      
    );
  }
}

