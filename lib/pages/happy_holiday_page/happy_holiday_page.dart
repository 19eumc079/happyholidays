import 'dart:math';

import 'package:flutter/material.dart';
import 'package:happyholidays/pages/happy_holiday_page/happy_holiday_components/happy_holiday_components.dart';
import 'package:happyholidays/styles/styles.dart';
import '../../common_widget/common_widget.dart';
import '../../models/models.dart';

class HappyHoliday extends StatelessWidget {
  HappyHoliday({super.key});

  List<CommonRowModel> name1 = [
    CommonRowModel(
        id: "2", place: "Bali", country1: "Indonesia", image1: "assets/p2.jpg"),
    CommonRowModel(
        id: "3", place: "London", country1: "England", image1: "assets/p3.jpg"),
    CommonRowModel(
        id: "4", place: "Paris", country1: "France", image1: "assets/p4.jpg"),
    CommonRowModel(
        id: "1",
        place: "India Gate",
        country1: "India",
        image1: "assets/p6.jpg"),
    CommonRowModel(
        id: "1",
        place: "Bankok",
        country1: "Thailand",
        image1: "assets/p5.jpg"),
    CommonRowModel(
        id: "1", place: "Bali", country1: "Indonesia", image1: "assets/p2.jpg"),
    CommonRowModel(
        id: "1",
        place: "Kuching",
        country1: "Malaysia",
        image1: "assets/p1.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
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
                    height: 30,
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
            Expanded(
              child: CommonRow(
                name: name1,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    color: AppColor.secondaryColor,
                    borderRadius: BoxBorders.secondaryBoxBorders),
                child: Column(
                  children: [
                    ListTile(
                      leading: Text(
                        "You might like!",
                        style: TextFonts.primaryText,
                      ),
                      trailing: CircleAvatar(
                          backgroundColor: AppColor.teritaryColor,
                          radius: 20,
                          child: IconButton(
                            icon: Icon(
                              Icons.add,
                              color: AppColor.secondaryColor,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          HappyHolidayAdd()));
                            },
                          )),
                    ),

                    ///////List View
                    Expanded(
                      flex: 2,
                      child: CommonContainer(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
