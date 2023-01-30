// import 'dart:convert';
// import 'dart:ffi';

// ignore_for_file: prefer_const_constructors

import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:happyholidays/models/happy_holiday_model/happy_holiday_model.dart';
import 'package:happyholidays/pages/happy_holiday_page/happy_holiday_components/more_page.dart';
import 'package:happyholidays/pages/pages.dart';
import 'package:happyholidays/styles/styles.dart';
import 'package:happyholidays/services/data_base.dart';

// class CommonContainer extends StatelessWidget {
//   List<TripData> trip = [];

//   @override
//   Widget build(BuildContext context) {
//     FirebaseDatabase database = FirebaseDatabase.instance;
//     DatabaseReference ref = FirebaseDatabase.instance.ref("tripdata");
//     // DatabaseEvent event = await ;
//     return FutureBuilder<DatabaseEvent>(
//       future: ref.once(),
//       builder: (context, snapshot) {
//         ;
//         if (snapshot.hasData) {
//           DatabaseEvent event = snapshot.data!;

//           List<Object?> data = event.snapshot.value as dynamic;
//           List data1 = data;

//           data1.forEach((e) {
//             trip.add(TripData(
//                 id: e['id'].toString(),
//                 place: e['place'],
//                 country: e['country']));
//           });

//           return ListView.builder(
//               shrinkWrap: true,
//               itemCount: trip.length,
//               itemBuilder: (BuildContext context, int index) {
//                 return ListTile(
//                     leading: CircleAvatar(
//                       backgroundImage: AssetImage("assets/p1.jpg"),
//                       radius: 50,
//                     ),
//                     trailing: Container(
//                       child: Column(
//                         children: [
//                           Text(
//                             "\$5-\$24",
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           Text("4.2")
//                         ],
//                       ),
//                     ),
//                     subtitle: Text(trip[index].country),
//                     onTap: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (BuildContext context) =>
//                                   DetailsPage()));
//                     },
//                     title: Text(trip[index].place));
//               });
//         } else if (snapshot.hasError) {
//           return Text(snapshot.error.toString());
//         }
//         // By default show a loading spinner.
//         return const CircularProgressIndicator();
//       },
//     );
//   }

class CommonContainer extends StatelessWidget {
  Query ref = FirebaseDatabase.instance.ref().child("tripdata");
  DatabaseReference reference =
      FirebaseDatabase.instance.ref().child("tripdata");

  @override
  Widget build(BuildContext context) {
    return FirebaseAnimatedList(
      query: ref,
      itemBuilder: (BuildContext context, DataSnapshot snapshot,
          Animation<double> animation, int index) {
        Map tripdata = snapshot.value as Map;
        tripdata["key"] = snapshot.key;
        return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/p4.jpg"),
              radius: 40,
            ),
            trailing: Wrap(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      tripdata['from_price'],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(tripdata['rating']),
                  ],
                ),
                PopupMenuButton(
                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem(
                        onTap: () {
                          reference.child(tripdata['key']).remove();
                        },
                        child: Icon(Icons.delete)),
                    PopupMenuItem(
                      child: Icon(Icons.update_rounded),
                      onTap: () {
                        Future.delayed(
                            Duration(seconds: 1),
                            (() => [
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              HappyHolidayAdd(
                                                tripKey: tripdata['key'],
                                              )))
                                ]));
                      },
                    ),
                  ],
                )
              ],
            ),
            subtitle: Text(tripdata['country']),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => DetailsPage()));
            },
            title: Text(tripdata['place']));
      },
    );
  }
}
