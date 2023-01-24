import 'package:flutter/material.dart';
import 'package:happyholidays/models/happy_holiday_model/happy_holiday_model.dart';
import 'package:happyholidays/pages/pages.dart';

class CommonContainer extends StatelessWidget {
  // final List<String> names = <String>[
  //   'Kuching',
  //   'Bali',
  //   'London',
  //   'Paris',
  //   'India Gate',
  //   'Bankok',
  //   'Bali',
  //   'Paris'
  // ];

  // final List<String> subnames = <String>[
  //   'Malaysia',
  //   'Indonesia',
  //   'England',
  //   'France',
  //   'India',
  //   'Thailand',
  //   'Indonesia',
  //   'France'
  // ];
  // final List<String> image1 = <String>[
  //   'assets/p1.jpg',
  //   'assets/p2.jpg',
  //   'assets/p3.jpg',
  //   'assets/p4.jpg',
  //   'assets/p5.jpg',
  //   'assets/p6.jpg',
  //   'assets/p3.jpg',
  //   'assets/p5.jpg',
  // ];

  List<TripData> data = [
    TripData(
        id: "1",
        place: "Kuching",
        country: "Malaysia",
        image1: "assets/p1.jpg"),
    TripData(
        id: "2", place: "Bali", country: "Indonesia", image1: "assets/p2.jpg"),
    TripData(
        id: "3", place: "London", country: "England", image1: "assets/p3.jpg"),
    TripData(
        id: "4", place: "Paris", country: "France", image1: "assets/p4.jpg"),
    TripData(
        id: "1",
        place: "India Gate",
        country: "India",
        image1: "assets/p6.jpg"),
    TripData(
        id: "1", place: "Bankok", country: "Thailand", image1: "assets/p5.jpg"),
    TripData(
        id: "1", place: "Bali", country: "Indonesia", image1: "assets/p2.jpg"),
    TripData(
        id: "1",
        place: "Kuching",
        country: "Malaysia",
        image1: "assets/p1.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(data[index].image1),
                  radius: 50,
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
                subtitle: Text(data[index].country),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => DetailsPage()));
                },
                title: Text(data[index].place));
          }),
    );
  }
}
