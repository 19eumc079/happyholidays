


import 'package:flutter/material.dart';
import 'package:happyholidays/pages/pages.dart';
import '../../common_widget/common_widget.dart'; 




class HappyHoliday extends StatelessWidget {
  const HappyHoliday({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(62, 103, 244, 1),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, left: 24),
            child: Text(
              "Hi,Vetrick\!",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 0, left: 20),
            child: Text(
              "Where do you",
              style: TextStyle(
                  fontSize: 43,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, bottom: 8),
            child: Text(
              "Want to go\?",
              style: TextStyle(
                  fontSize: 43,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "We filter out a best place for your next vecation",
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
           
          Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: SizedBox(
              width: 350,
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    prefixIcon: Icon(Icons.search),
                    hintText: ("Search City...")),
              ),
            ),
          ),

          Container(
            height: MediaQuery.of(context).size.height / 5,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[

                ///1st
              CommonRow(image1: "assets/p1.jpg",text:'Kuching',text1:'Malaysia'),
              CommonRow(image1: "assets/p2.jpg",text:'Bali',text1:'indonesia'),
              CommonRow(image1: "assets/p3.jpg",text:'London',text1:'England'),

              CommonRow(image1: "assets/p4.jpg",text:'Paris',text1:'France'),
              CommonRow(image1: "assets/p6.jpg",text:'India Gate',text1:'India'),
              CommonRow(image1: "assets/p5.jpg",text:'Bankok',text1:'Thailand'),
              


                /////end

             
             
               
               
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 402,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 252, 252),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                  )),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 0, right: 180, top: 30),
                    child: Text(
                      "You might like!",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),

                  ///////List View
                  Container(
                    height: 340,
                    child:ListView(
                         children: [
                           
                             
                             
              CommonContainer(image: "assets/p1.jpg",text:'Kuching',text1:'Malaysia'),
              CommonContainer(image: "assets/p2.jpg",text:'Bali',text1:'indonesia'),
              CommonContainer(image: "assets/p3.jpg",text:'London',text1:'England'),

              CommonContainer (image: "assets/p4.jpg",text:'Paris',text1:'France'),
              CommonContainer(image: "assets/p6.jpg",text:'India Gate',text1:'India'),
              CommonContainer(image: "assets/p5.jpg",text:'Bankok',text1:'Thailand'),
              
                             
                                
                          

                         ],

                    ),
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



