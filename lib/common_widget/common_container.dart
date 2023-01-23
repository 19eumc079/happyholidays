import 'package:flutter/material.dart';
import 'package:happyholidays/pages/pages.dart';

class CommonContainer extends StatelessWidget {
  final List<String> names = <String>[
    'Kuching',
    'Bali',
    'London',
    'Paris',
    'India Gate',
    'Bankok',
    'Bali',
    'Paris'
  ];

  final List<String> subnames = <String>[
    'Malaysia',
    'Indonesia',
    'England',
    'France',
    'India',
    'Thailand',
    'Indonesia',
    'France'
  ];
  final List<String> image1 = <String>[
    'assets/p1.jpg',
    'assets/p2.jpg',
    'assets/p3.jpg',
    'assets/p4.jpg',
    'assets/p5.jpg',
    'assets/p6.jpg',
    'assets/p3.jpg',
    'assets/p5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('${image1[index]}'),
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
                subtitle: Text('${subnames[index]}'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => DetailsPage()));
                },
                title: Text('${names[index]}'));
          }),
    );
  }
}
