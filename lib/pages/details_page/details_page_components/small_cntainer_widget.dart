import 'package:flutter/material.dart';
import 'package:happyholidays/styles/styles.dart';

class SmallCntainerWidget extends StatelessWidget {
  const SmallCntainerWidget({required this.text1, required this.text});
  final String text1;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10, top: 10),
          child: Text(
            text1,
            style: TextFonts.secontaryText,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10, top: 5),
          child: Text(
            text,
            style: TextFonts.teritaryText,
          ),
        ),
      ],
    );
  }
}
