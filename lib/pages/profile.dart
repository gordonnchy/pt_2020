import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Profilepage extends StatelessWidget {
 Widget theTiles(String title, String sub,String thescheme)
 {

 return Column(
   children: [
     ListTile(
                  title: Text(title,style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,color: Colors.red)),
                  subtitle:Text(sub,style: TextStyle(fontSize: 20.0)),
                  onTap: (){
                     final Uri _emailLaunchUri = Uri(
                      scheme: thescheme,
                      path: sub,);
                     
           launch(_emailLaunchUri.toString());
  }
                  
),
Divider()
   ],
 );

 }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title:Text('View profile'),
       backgroundColor: Colors.red,
       leading: IconButton(icon:Icon(Icons.arrow_back ,color: Colors.white), onPressed: (){
        Navigator.pushNamed(context,'/');
       },) ,  
      ),
      body:SingleChildScrollView(
              child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient:LinearGradient(
                     begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.red,Colors.red.withOpacity(0.6)],

                )
              ),
                padding: const EdgeInsets.symmetric(horizontal: 0.0 ,vertical: 30.0),
                  
              child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector( onTap: (){
                      
                      final Uri _emailLaunchUri = Uri(
                      scheme: 'tel',
                      path: '0718563476',);
                     
           launch(_emailLaunchUri.toString());

                  },
                                      child: CircleAvatar(child: Icon(Icons.call),radius: 30.0,backgroundColor: Colors.red
                    ),
                  ),
                  Column(
                    children: [SizedBox( height: 20,),
                      CircleAvatar(
                        child:CircleAvatar(
                          backgroundImage: AssetImage('assets/person15.jpg'),
                                 radius: 55.0,  
                               ),radius: 65.0,backgroundColor:Colors.red[200],),
                               SizedBox( height: 8.0,),
                      Text('Mary Smith' ,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.white)),
                      Text('Washington D.C,USA' ,style: TextStyle(fontSize: 15.0,color:Colors.red))
                    ],
                  ) ,
                  GestureDetector(
                    onTap: (){
                      
                      final Uri _emailLaunchUri = Uri(
                      scheme: 'sms',
                      path: '0718563476',);
                     
                    launch(_emailLaunchUri.toString());

                  },
                    
                    child: CircleAvatar(child: Icon(Icons.message),radius: 30.0,backgroundColor: Colors.red,)),

                ],
                ),
            ),
             
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                   Expanded(
                       child: Container(
                       padding: EdgeInsets.all(20),
                       color: Colors.red.withOpacity(0.5),
                       child: Column(
                         children: [
                          Text('78643' ,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.white)),
                          Text('FOLLOWERS' ,style: TextStyle(fontSize: 15.0,color:Colors.red))

                         ]
                       )
                     ),
                   ),
                   
                    Expanded(
                      child: Container(
                      padding: EdgeInsets.all(20),
                       color: Colors.red,
                       child: Column(
                         children: [
                          Text('97462' ,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.white)),
                          Text('FOLLOWING' ,style: TextStyle(fontSize: 15.0,color:Colors.white))

                         ]
                       )
                   ),
                    )  
               ]
             ),
            theTiles('Email','MarySmith01@gmail.com','mailto'),
            theTiles('Phone','0718563476','tel'),
            theTiles('Twitter','twitter.com/Mary_smith','http'),
            theTiles('Facbook','facebook.com/The_MarySmith','http'),
            theTiles('Instagram','instagram.com/official_MarySmith','http'),
          ]
        ),
      )
    );
  }
}