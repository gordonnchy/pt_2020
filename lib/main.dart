import 'package:childrens_app/pages/profile.dart';
import 'package:flutter/material.dart';

import 'Welcomepage.dart';
import 'Colorpage.dart';
import 'whatsapp_page.dart';
import 'pages/profile.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
  //    home: MyHomePage(title: 'Flutter Demo Home Page'),
       initialRoute: '/',
      routes: {
        '/':(BuildContext contex){
          return MyHomePage();
        },
        '/welcomepage':(BuildContext contex){
          return Welcomepage();
        },
        '/colorpage':(BuildContext contex){
          return Colorpage();
        },
       '/whatsapp_page':(BuildContext contex){
          return Whatsapp();
        },
         '/profile_page':(BuildContext contex){
          return Profilepage();
        }

      },
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
         drawer: Drawer(
           child: ListView(
             children:[
               UserAccountsDrawerHeader(
  accountName: Text("Stephen Shapa"),
  accountEmail: Text("Stephen.shapa4@gmail.com"),
  currentAccountPicture: CircleAvatar(

    backgroundImage:AssetImage('assets/life.jpg')
            
              ),
             ),
               ListTile(
                 title:Text('Color picker') ,
                 onTap: (){
                   Navigator.pushNamed(context,'/colorpage');}
                 ),
                 Divider(),
                
               ListTile(
                 title:Text('Whatsapp') ,
                   onTap: (){
                   Navigator.pushNamed(context,'/whatsapp_page');}
                 ),
                 Divider(),
              ListTile(
                 title:Text('Profile page') ,
                  onTap: (){
                   Navigator.pushNamed(context,'/profile_page');}
                 ),
                 Divider(),
             ]
           ),
           
         ),
         appBar: AppBar(
           backgroundColor: Colors.white,
         // title: Text('HomePage'),
          iconTheme: IconThemeData(color:Colors.black) ,
          elevation:0,
        ),
       
      

      body: 

         Container(
           color: Colors.white,
           child: Padding(
             padding: const EdgeInsets.all(20.0),
             child: Column(
        
 
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Play & Learn",style:TextStyle(color:Colors.blue,fontSize: 40,fontWeight:FontWeight.bold) ),
                  Padding(

                  padding: const EdgeInsets.all(20.0),
                  child: Text('''Lorem ipsum is the a language spokeby many peapli the
sylt is after knowing the unknown Lorem ipsum dolor s
ctetur adipiscing elit Mauris ante. ''',style:TextStyle(color:Colors.grey,fontSize: 10) ),
                ),
                Image.asset("assets/decorative_friends.png"),
                Spacer(),
                Row(
                  children: [
                    Expanded(
                              child: RaisedButton(onPressed:(){
                                Navigator.pushNamed(context,'/profile_page');
                              },
                               color: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text('Start now',style:TextStyle(color:Colors.white,fontSize: 15) )
                        ),
                      ),
                      
                      ),
                    
                  ],
                ),
                SizedBox(height: 40.0,)

              ],
    
        ),
           ),
         )
      
    );
  }
}
