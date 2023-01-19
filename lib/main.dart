import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
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
          // Padding(
          //   padding: EdgeInsets.only(top: 20, left: 10, right: 10),
          //   child: TextField(
          //     decoration: InputDecoration(
          //       borderSide:BorderSide(
          //         width: 2
          //       ),
          //         filled: true,
          //         fillColor: Colors.white,
          //         prefixIcon: Icon(Icons.search),
          //         hintText: "Search City..."),
          //   ),
          // ),
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
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 10,
                              width: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage("assets/p1.jpg"),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: Text(
                                "Kuching\,",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(0),
                              child: Text(
                                "Malaysia",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 183, 183, 183)),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                /////end

                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 10,
                              width: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage("assets/p2.jpg"),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: Text(
                                "Bali\,",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(0),
                              child: Text(
                                "Indonesia",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 183, 183, 183)),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 10,
                              width: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage("assets/p3.jpg"),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: Text(
                                "London\,",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(0),
                              child: Text(
                                "England",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 183, 183, 183)),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 10,
                              width: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage("assets/p4.jpg"),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: Text(
                                "Paris\,",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(0),
                              child: Text(
                                "France",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 183, 183, 183)),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 10,
                              width: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage("assets/p5.jpg"),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: Text(
                                "Bangkok\,",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(0),
                              child: Text(
                                "Thailand",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 183, 183, 183)),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 10,
                              width: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage("assets/p6.jpg"),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: Text(
                                "India Gate\,",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(0),
                              child: Text(
                                "India",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 183, 183, 183)),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 10,
                              width: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage("assets/p1.jpg"),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: Text(
                                "Kuching\,",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(0),
                              child: Text(
                                "Malaysia",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 183, 183, 183)),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
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
                    child: ListView(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/p1.jpg"),
                            radius: 50,
                          ),
                          title: Text(
                            "Kuching, Malaysia",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: Container(
                            child: Column(
                              children: [
                                Text(
                                  "\$5-\$24",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("4.2")
                              ],
                            ),
                          ),
                          subtitle: Text('Malaysia'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Details()));
                          },
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/p5.jpg"),
                            radius: 50,
                          ),
                          title: Text(
                            "Bankok, Thailand",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: Container(
                            child: Column(
                              children: [
                                Text(
                                  "\$5-\$26",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("4.3")
                              ],
                            ),
                          ),
                          subtitle: Text('Thailand'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Details()));
                          },
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/p2.jpg"),
                            radius: 50,
                          ),
                          title: Text(
                            "Bali, Indonesia",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: Container(
                            child: Column(
                              children: [
                                Text(
                                  "\$5-\$27",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("4.8")
                              ],
                            ),
                          ),
                          subtitle: Text('Indonesia'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Details()));
                          },
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/p3.jpg"),
                            radius: 50,
                          ),
                          title: Text(
                            "London, England",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: Container(
                            child: Column(
                              children: [
                                Text(
                                  "\$6-\$29",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("4.9")
                              ],
                            ),
                          ),
                          subtitle: Text('England'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Details()));
                          },
                        ), ////////
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/p4.jpg"),
                            radius: 50,
                          ),
                          title: Text(
                            "Paris, France",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: Container(
                            child: Column(
                              children: [
                                Text(
                                  "\$7-\$36",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("5.0")
                              ],
                            ),
                          ),
                          subtitle: Text('France'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Details()));
                          },
                        ),

                        ////////
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/p2.jpg"),
                            radius: 50,
                          ),
                          title: Text(
                            "Bali, Indonesia",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: Container(
                            child: Column(
                              children: [
                                Text(
                                  "\$5-\$27",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("4.3")
                              ],
                            ),
                          ),
                          subtitle: Text('Thailand'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Details()));
                          },
                        ),
                        ///////////////
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/p1.jpg"),
                            radius: 50,
                          ),
                          title: Text(
                            "Kuching, Malaysia",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: Container(
                            child: Column(
                              children: [
                                Text(
                                  "\$4-\$36",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("4.6")
                              ],
                            ),
                          ),
                          subtitle: Text('Malaysia'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Details()));
                          },
                        ),
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

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(62, 103, 244, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(62, 103, 244, 1),
        // leading: Icon(Icons.arrow_back),
        elevation: 0,
        title: Text(
          "City Details",
          style: TextStyle(fontSize: 20),
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
            color: Color.fromRGBO(62, 103, 244, 1),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 440,
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
                    padding: EdgeInsets.only(left: 0, right: 240, top: 30),
                    child: Text(
                      "Things to do",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),

                  Container(
                    height: MediaQuery.of(context).size.height / 6,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Column(
                                children: [
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height / 10,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage("assets/s111.jpg"),
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 4),
                                    child: Text(
                                      " Books",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color.fromARGB(
                                              255, 121, 120, 120),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Column(
                                children: [
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height / 10,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage("assets/s2.jpeg"),
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 4),
                                    child: Text(
                                      "Camp Fire",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color.fromARGB(
                                              255, 121, 120, 120),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Column(
                                children: [
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height / 10,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage("assets/s3.png"),
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 4),
                                    child: Text(
                                      " Gym",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color.fromARGB(
                                              255, 121, 120, 120),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Column(
                                children: [
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height / 10,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage("assets/s4.png"),
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 4),
                                    child: Text(
                                      "Yoga",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color.fromARGB(
                                              255, 121, 120, 120),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            )                       
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Column(
                                children: [
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height / 10,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage("assets/s5.jpg"),
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 4),
                                    child: Text(
                                      "Ice Skate",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color.fromARGB(
                                              255, 121, 120, 120),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Column(
                                children: [
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height / 10,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage("assets/s6.png"),
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 4),
                                    child: Text(
                                      "Gym",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color.fromARGB(
                                              255, 121, 120, 120),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(right: 250),
                    child: Text(
                      "Must Visit",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),

                  ///////List View
                  Container(
                    height: 217,
                    child: ListView(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/p1.jpg"),
                            radius: 50,
                          ),
                          title: Text(
                            "Kuching, Malaysia",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: Container(
                            child: Column(
                              children: [
                                Text(
                                  "\$5-\$24",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("4.2")
                              ],
                            ),
                          ),
                          subtitle: Text('Malaysia'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                         Thankyou()));
                          },
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/p5.jpg"),
                            radius: 50,
                          ),
                          title: Text(
                            "Bankok, Thailand",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: Container(
                            child: Column(
                              children: [
                                Text(
                                  "\$5-\$26",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("4.3")
                              ],
                            ),
                          ),
                          subtitle: Text('Thailand'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Thankyou()));
                          },
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/p2.jpg"),
                            radius: 50,
                          ),
                          title: Text(
                            "Bali, Indonesia",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: Container(
                            child: Column(
                              children: [
                                Text(
                                  "\$5-\$27",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("4.8")
                              ],
                            ),
                          ),
                          subtitle: Text('Indonesia'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                          Thankyou()));
                          },
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/p3.jpg"),
                            radius: 50,
                          ),
                          title: Text(
                            "London, England",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: Container(
                            child: Column(
                              children: [
                                Text(
                                  "\$6-\$29",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("4.9")
                              ],
                            ),
                          ),
                          subtitle: Text('England'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                         Thankyou()));
                          },
                        ), ////////
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/p4.jpg"),
                            radius: 50,
                          ),
                          title: Text(
                            "Paris, France",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: Container(
                            child: Column(
                              children: [
                                Text(
                                  "\$7-\$36",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("5.0")
                              ],
                            ),
                          ),
                          subtitle: Text('France'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                         Thankyou()));
                          },
                        ),

                        ////////
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/p2.jpg"),
                            radius: 50,
                          ),
                          title: Text(
                            "Bali, Indonesia",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: Container(
                            child: Column(
                              children: [
                                Text(
                                  "\$5-\$27",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("4.3")
                              ],
                            ),
                          ),
                          subtitle: Text('Thailand'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Thankyou()));
                          },
                        ),
                        ///////////////
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/p1.jpg"),
                            radius: 50,
                          ),
                          title: Text(
                            "Kuching, Malaysia",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: Container(
                            child: Column(
                              children: [
                                Text(
                                  "\$4-\$36",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("4.6")
                              ],
                            ),
                          ),
                          subtitle: Text('Malaysia'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Details()));
                          },
                        ),
                      ],
                    ),
                  ),

                  //
                ],
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 15),
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    title: Padding(
                      padding:EdgeInsets.only(top:10),
                      child:Text("Bangkok",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),),
                    subtitle: Text("Thailand"),
                    trailing: Wrap(children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor:
                            Color.fromRGBO(253, 201, 46, 1), //<-- SEE HERE
                        child: IconButton(
                          icon: Icon(
                            Icons.location_on_rounded,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      FloatingActionButton.extended(
                          backgroundColor: Colors.black,
                           
                          icon: Icon(Icons.favorite),
                          onPressed: () {},
                          label: Text("Saved"))
                    ]),
                  ),
                
          
                  Padding(
                    padding: EdgeInsets.only(top: 15, left: 15),
                    child: Text(
                        "Bangkok, Thailand's capital, is a large city known for ornate shrines and vibrant street life. The bo Read More"),
                  ),
                    Padding(
                    padding:EdgeInsets.only(right:45),
                              child:Divider(
            height: 20,
            thickness: 2,
            indent: 20,
          
            color: Color.fromRGBO( 128,128,128,2),
          ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                "8,375k\+",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10, top: 5),
                              child: Text(
                                "Population",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 133, 132, 132)),
                              ),
                            ),

                          ],
                        ),
                         Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                "Thai\/Siamese",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10, top: 5),
                              child: Text(
                                "Language",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 133, 132, 132)),
                              ),
                            ),
                          ],
                        ),
 

                   
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                "Thai Baht",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10, top: 5),
                              child: Text(
                                "Currency",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 133, 132, 132)),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )),

              
Container(
  
   margin:EdgeInsets.only(left:20), 
    
  child:     CircleAvatar(
  backgroundColor: Colors.white,
  radius: 40,
  child: CircleAvatar(
    radius: 35,
    backgroundImage: AssetImage('assets/p5.jpg'),
  ),
 
     )
)



        


        ],
      ),
    );
  }
}




class Thankyou extends StatelessWidget{
  const Thankyou ({super.key});
  @override
 
  Widget build(BuildContext context){
    return   Scaffold(
      
      
      backgroundColor:  Color. fromRGBO(62, 103, 244, 1),
        body: Stack(

  children:  [
    Positioned(
      
      bottom:45,
      child:Container( 
        height:MediaQuery.of(context).size.height/2,
        width:MediaQuery.of(context).size.width,
        decoration:BoxDecoration(
          color:Colors.white,
                 borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                  )
          
        ), 
        
        
        
        

      ),
 
    ),






 

    
 


 
  
 

                   
 
  ],
)
    );
      
          
  }
}
