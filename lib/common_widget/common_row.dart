import 'package:flutter/material.dart';
import 'package:happyholidays/models/happy_holiday_model/happy_holiday_model.dart';
import '../../styles/styles.dart';

class CommonRow extends StatelessWidget {
  CommonRow({required this.name});

  final List<CommonRowModel> name;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: name.length,
        itemBuilder: (BuildContext ctxt, int index) {
          return Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 10,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(name[index].image1),
                        fit: BoxFit.fill),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 4),
                  child: Text(
                    (name[index].place),
                    style: HeaderFonts.primaryText,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Text(
                    (name[index].country1),
                    style: TextStyle(
                      fontSize: 15,
                      color: TextColor.primaryColor,
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
