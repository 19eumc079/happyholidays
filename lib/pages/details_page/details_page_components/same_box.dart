import 'package:flutter/material.dart';
import 'package:happyholidays/styles/styles.dart';

class SameBox extends StatelessWidget {
  const SameBox({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 240, top: 10),
      child: Text(
        text,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
