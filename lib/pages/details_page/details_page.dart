


import 'package:flutter/material.dart';
import 'package:happyholidays/pages/pages.dart';
import '../../common_widget/common_widget.dart'; 

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

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
                CommonRow(image1: "assets/s6.png",text:'Kuching',text1:'Party'),
              CommonRow(image1: "assets/s111.jpg",text:'Bali',text1:'Books'),
              CommonRow(image1: "assets/s2.jpeg",text:'London',text1:'Camp Fire'),

              CommonRow(image1: "assets/s3.png",text:'Paris',text1:'Gym'),
              CommonRow(image1: "assets/s4.png",text:'IndiaGate',text1:'Yoga'),
              CommonRow(image1: "assets/s5.jpg",text:'Bankok',text1:'Ice Skate'),
              
               
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

                   
                     Container(
                    height: 217,
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


