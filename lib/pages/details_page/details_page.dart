import 'package:flutter/material.dart';
import 'package:happyholidays/pages/details_page/details_page_components/details_page_components.dart';
import 'package:happyholidays/pages/details_page/details_page_components/small_cntainer_widget.dart';
import 'package:happyholidays/pages/pages.dart';
import 'package:happyholidays/styles/styles.dart';
import '../../common_widget/common_widget.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}

class TopWidget extends StatelessWidget {
  const TopWidget({
    Key? key,
  }) : super(key: key);

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
          SizedBox(
            height: MediaQuery.of(context).size.height / 6,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CommonRow(
                    image1: "assets/s6.png", text: 'Kuching', text1: 'Party'),
                CommonRow(
                    image1: "assets/s111.jpg", text: 'Bali', text1: 'Books'),
                CommonRow(
                    image1: "assets/s2.jpeg",
                    text: 'London',
                    text1: 'Camp Fire'),
                CommonRow(image1: "assets/s3.png", text: 'Paris', text1: 'Gym'),
                CommonRow(
                    image1: "assets/s4.png", text: 'IndiaGate', text1: 'Yoga'),
                CommonRow(
                    image1: "assets/s5.jpg",
                    text: 'Bankok',
                    text1: 'Ice Skate'),
              ],
            ),
          ),
          SameBox(text: "Must Visit"),
          SizedBox(
            height: MediaQuery.of(context).size.height / 4,
            child: ListView(
              children: [
                CommonContainer(
                    image: "assets/p1.jpg", text: 'Kuching', text1: 'Malaysia'),
                CommonContainer(
                    image: "assets/p2.jpg", text: 'Bali', text1: 'indonesia'),
                CommonContainer(
                    image: "assets/p3.jpg", text: 'London', text1: 'England'),
                CommonContainer(
                    image: "assets/p4.jpg", text: 'Paris', text1: 'France'),
                CommonContainer(
                    image: "assets/p6.jpg", text: 'India Gate', text1: 'India'),
                CommonContainer(
                    image: "assets/p5.jpg", text: 'Bankok', text1: 'Thailand'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
