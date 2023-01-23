import 'package:flutter/material.dart';
import 'package:happyholidays/pages/pages.dart';
import 'package:happyholidays/styles/styles.dart';
import '../../common_widget/common_widget.dart';

class HappyHoliday extends StatelessWidget {
  const HappyHoliday({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.teritaryColor,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi,Vetrick!",
                  style: WelcomeFonts.primaryText,
                ),
                Text(
                  "Where do you \nWant to go?",
                  style: WelcomeFonts.secontaryText,
                ),
                Text(
                  "We filter out a best place for your next vecation",
                  style: WelcomeFonts.primaryText,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColor.secondaryColor,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BoxBorders.primaryBoxBorders,
                        ),
                        prefixIcon: Icon(Icons.search),
                        hintText: ("Search City...")),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                ///1st
                CommonRow(
                    image1: "assets/p1.jpg",
                    text: 'Kuching',
                    text1: 'Malaysia'),
                CommonRow(
                    image1: "assets/p2.jpg", text: 'Bali', text1: 'indonesia'),
                CommonRow(
                    image1: "assets/p3.jpg", text: 'London', text1: 'England'),

                CommonRow(
                    image1: "assets/p4.jpg", text: 'Paris', text1: 'France'),
                CommonRow(
                    image1: "assets/p6.jpg",
                    text: 'India Gate',
                    text1: 'India'),
                CommonRow(
                    image1: "assets/p5.jpg", text: 'Bankok', text1: 'Thailand'),

                /////end
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 402,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                  color: AppColor.secondaryColor,
                  borderRadius: BoxBorders.secondaryBoxBorders),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 180, top: 30),
                    child: Text(
                      "You might like!",
                      style: TextFonts.primaryText,
                    ),
                  ),

                  ///////List View
                  Container(
                    height: 340,
                    //   child: ListView(
                    //     children: [
                    //       CommonContainer(
                    //           image: "assets/p1.jpg",
                    //           text: 'Kuching',
                    //           text1: 'Malaysia'),
                    //       CommonContainer(
                    //           image: "assets/p2.jpg",
                    //           text: 'Bali',
                    //           text1: 'indonesia'),
                    //       CommonContainer(
                    //           image: "assets/p3.jpg",
                    //           text: 'London',
                    //           text1: 'England'),
                    //       CommonContainer(
                    //           image: "assets/p4.jpg",
                    //           text: 'Paris',
                    //           text1: 'France'),
                    //       CommonContainer(
                    //           image: "assets/p6.jpg",
                    //           text: 'India Gate',
                    //           text1: 'India'),
                    //       CommonContainer(
                    //           image: "assets/p5.jpg",
                    //           text: 'Bankok',
                    //           text1: 'Thailand'),
                    //     ],
                    //   ),
                    //
                    child: CommonContainer(),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
