import 'package:flutter/material.dart';

class Welcomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
         // title: Text('HomePage'),
          iconTheme: IconThemeData(color:Colors.black) ,
          elevation:0,

      ),
     body: Padding(
       padding: const EdgeInsets.all(8.0),
       child: Container(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children:[Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container( height: 250,width: 300,
                  child: Image.asset("assets/welcome_cats.png")),
              ],
                              
            ),
           Text("C",style:TextStyle(color:Colors.blue,fontSize: 60,fontWeight:FontWeight.bold) ), 
            ]
         ),
       ),
     ), 
    );
  }
}