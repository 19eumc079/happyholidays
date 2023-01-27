import 'package:flutter/material.dart';
import 'package:happyholidays/pages/pages.dart';
import 'package:happyholidays/styles/styles.dart';
import '../../common_widget/common_widget.dart';
import '../../models/models.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        Navigator.pop(context);
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColor.teritaryColor,
        appBar: AppBar(
          backgroundColor: AppColor.teritaryColor,
          // leading: Icon(Icons.arrow_back),
          elevation: 0,
          title: Text(
            "City Details",
            style: TextFonts.qationaryText,
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.share),
            )
          ],

          toolbarHeight: 70,
        ),
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: AppColor.teritaryColor,
            ),
            Positioned(
              bottom: 1,
              right: 0,
              left: 0,
              child: TopWidget(),
            ),
            Container(
                margin: EdgeInsets.only(top: 15),
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: AppColor.secondaryColor,
                    borderRadius: BoxBorders.teritaryBoxBorders),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      title: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text("Bangkok", style: TextFonts.primaryText),
                      ),
                      subtitle: Text("Thailand"),
                      trailing: Wrap(children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor:
                              Color.fromRGBO(253, 201, 46, 1), //<-- SEE HERE
                          child: IconButton(
                            icon: Icon(
                              Icons.location_on_rounded,
                              color: AppColor.primaryColor,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        FloatingActionButton.extended(
                            backgroundColor: AppColor.primaryColor,
                            icon: Icon(Icons.favorite),
                            onPressed: () {},
                            label: Text("Saved"))
                      ]),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15, left: 15),
                      child: Text(
                          "Bangkok, Thailand's capital, is a large city known for ornate \nshrines and vibrant street life. The bo Read More"),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 45),
                      child: Divider(
                        height: 20,
                        thickness: 2,
                        indent: 20,
                        color: TextColor.teritaryColor,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SmallCntainerWidget(
                          text1: "8,375k+",
                          text: "Population",
                        ),

                        SmallCntainerWidget(
                          text1: "Thai\/Siamese",
                          text: "Language",
                        ),
                        SmallCntainerWidget(
                          text1: "Thai Baht",
                          text: "Currency",
                        ),
                        ///////////////
                      ],
                    ),
                  ],
                )),
            Container(
                margin: EdgeInsets.only(left: 20),
                child: CircleAvatar(
                  backgroundColor: AppColor.secondaryColor,
                  radius: 40,
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/p5.jpg'),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class TopWidget extends StatelessWidget {
  TopWidget({
    Key? key,
  }) : super(key: key);
  List<CommonRowModel> name = [
    CommonRowModel(
        id: "2", place: " ", country1: "Camp Fire", image1: "assets/s2.jpeg"),
    CommonRowModel(
        id: "3", place: " ", country1: "Gym", image1: "assets/s3.png"),
    CommonRowModel(
        id: "4", place: " ", country1: "Yoga", image1: "assets/s4.png"),
    CommonRowModel(
        id: "1", place: " ", country1: "Peace", image1: "assets/s6.png"),
    CommonRowModel(
        id: "1", place: " ", country1: "Freedom", image1: "assets/s5.jpg"),
    CommonRowModel(
        id: "1", place: " ", country1: "Party", image1: "assets/s2.jpeg"),
    CommonRowModel(
        id: "1", place: " ", country1: "Book", image1: "assets/s111.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2,
      decoration: BoxDecoration(
          color: AppColor.secondaryColor,
          borderRadius: BoxBorders.secondaryBoxBorders),
      child: Column(
        children: [
          SameBox(text: "Things to do"),
          Expanded(
            child: CommonRow(
              name: name,
            ),
          ),
          SameBox(text: "Must Visit"),
          SizedBox(
            height: MediaQuery.of(context).size.height / 4,
            child: CommonContainer(),
          ),
        ],
      ),
    );
  }
}
