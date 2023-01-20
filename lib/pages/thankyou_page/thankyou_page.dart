

import 'package:flutter/material.dart';
 

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