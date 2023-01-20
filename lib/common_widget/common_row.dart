
import 'package:flutter/material.dart';
import '../../styles/styles.dart'; 

class CommonRow extends StatelessWidget{
   
    const CommonRow ({required this.text,required this.text1,required this.image1});
    @override

        final String text;
        final String text1;
        final String image1;
    Widget build(BuildContext context){
        return Container(
            margin:EdgeInsets.only(left:10),
            child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 10,
                              width: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(image1),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: Text(
                                 (text),
                                style: HeaderFonts.primaryText,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(0),
                              child: Text(
                                 (text1),
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromRGBO(46, 48, 50, 1)),
                              ),
                            )
                          ],
                        ),
        );
    }
}