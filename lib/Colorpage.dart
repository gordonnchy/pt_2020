import 'package:flutter/material.dart';

class Colorpage extends StatefulWidget {
  @override
  _ColorpageState createState() => _ColorpageState();
}

class _ColorpageState extends State<Colorpage> {
  Color mycolor=Colors.blue ;

   
  @override
  Widget build(BuildContext context) {
 
   
    return Scaffold(
    // iconTheme:IconThemeData(color: Colors.white),
      
      backgroundColor: mycolor,

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
                  child: Column(
    //      mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height:20.0),
              Row( 
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
               Icon(Icons.color_lens,color: Colors.white,size: 40.0,),
               Icon(Icons.more_vert,color: Colors.white,size: 40.0,)
                ],
               
              ),
              SizedBox(height:20.0),
               Row(
                  children: [Text("Boom-magic color chage!",
                  style:TextStyle(color:Colors.white,fontSize: 30,fontWeight:FontWeight.bold)
                               )
                       ]
                  ),
               SizedBox(height:200.0),

               SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                 child: Padding(
                    padding: const EdgeInsets.all(0),
                   child: Row(
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                     children: 
                   [Container(margin: EdgeInsets.symmetric(horizontal: 30.0),
                          height: 120.0,
                          width: 120.0,
                          decoration: BoxDecoration(
                            shape:BoxShape.circle,
                           color: Colors.white,
                          ) ,
                          
                            child: InkWell(
                          onTap: (){ setState((){
                            mycolor=Colors.blue;
                           Scaffold(); 
                          });
                            
                            print('flutter now');
                          },
                                child: Container(
                                margin: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                shape:BoxShape.circle,
                              color: Colors.blue,)
                              ),
                            )
                   ),

                   Container(
                          margin: EdgeInsets.symmetric(horizontal: 30.0),
                          height: 120.0,
                          width: 120.0,
                          decoration: BoxDecoration(
                            shape:BoxShape.circle,
                           color: Colors.white,
                          ) ,
                          
                            child: InkWell(
                          onTap: (){ setState((){
                            mycolor=Colors.orange;
                           Scaffold(); 
                          });
                            
                            print('flutter now');
                          },
                                child: Container(
                                margin: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                shape:BoxShape.circle,
                              color: Colors.orange,)
                              ),
                            )
                   ),
              
              Container(
                          margin: EdgeInsets.symmetric(horizontal: 30.0),
                          height: 120.0,
                          width: 120.0,
                          decoration: BoxDecoration(
                            shape:BoxShape.circle,
                           color: Colors.white,
                          ) ,
                          
                            child: InkWell(
                          onTap: (){ setState((){
                            mycolor=Colors.pink;
                           Scaffold(); 
                          });
                            
                            print('flutter now');
                          },
                                child: Container(
                                margin: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                shape:BoxShape.circle,
                              color: Colors.pink)
                              ),
                            )
                   ),

                   Container(
                          margin: EdgeInsets.symmetric(horizontal: 30.0),
                          height: 120.0,
                          width: 120.0,
                          decoration: BoxDecoration(
                            shape:BoxShape.circle,
                           color: Colors.white,
                          ) ,
                          
                            child: InkWell(
                          onTap: (){ setState((){
                            mycolor=Colors.green;
                           Scaffold(); 
                          });
                            
                            print('flutter now');
                          },
                                child: Container(
                                margin: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                shape:BoxShape.circle,
                              color: Colors.green,)
                              ),
                            )
                   ),

                   Container(
                          margin: EdgeInsets.symmetric(horizontal: 30.0),
                          height: 120.0,
                          width: 120.0,
                          decoration: BoxDecoration(
                            shape:BoxShape.circle,
                           color: Colors.white,
                          ) ,
                          
                            child: InkWell(
                          onTap: (){ setState((){
                            mycolor=Colors.purple;
                           Scaffold(); 
                          });
                            
                            print('flutter now');
                          },
                                child: Container(
                                margin: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                shape:BoxShape.circle,
                              color: Colors.purple,)
                              ),
                            )
                   ),

                   Container(
                          margin: EdgeInsets.symmetric(horizontal: 30.0),
                          height: 120.0,
                          width: 120.0,
                          decoration: BoxDecoration(
                            shape:BoxShape.circle,
                           color: Colors.white,
                          ) ,
                          
                            child: InkWell(
                          onTap: (){ setState((){
                            mycolor=Colors.indigo;
                           Scaffold(); 
                          });
                            
                            print('flutter now');
                          },
                                child: Container(
                                margin: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                shape:BoxShape.circle,
                              color: Colors.indigo,)
                              ),
                            )
                   ),
                   

                   ],
                   ),
                 ),
               )   
            ],

          ),
        ),
      ),

      
    );   
  } 
}
 class Mylist extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return ListView(
          
          
        );
      }
    }