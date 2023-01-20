
import 'package:flutter/material.dart';
import 'package:happyholidays/pages/pages.dart';

class CommonContainer extends StatelessWidget {
    CommonContainer ({required this.image,required this.text1,required this.text});
    final String image;
    final String text1;
    final String text;
    @override
    Widget build(BuildContext context){
        return  
                       
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(image),
                            radius: 50,
                          ),
                          title: Text(
                                 text1,
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
                          subtitle: Text(text),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        DetailsPage()));
                          },
                        );
                         
                      
                     
    }
}



