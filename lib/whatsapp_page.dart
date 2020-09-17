

import 'package:flutter/material.dart';
import './pages/camera.dart';
import './pages/chats.dart';
import './pages/status.dart';
import './pages/calls.dart';


class Whatsapp extends StatefulWidget  {
  @override
  _WhatsappState createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> with SingleTickerProviderStateMixin {
  final List<Tab> tabs = <Tab>[
         Tab(icon: new Icon(Icons.camera_alt)),
         Tab(text:'CHATS'),
         Tab(text:'STATUS'),
         Tab(text:'CALLS'),
];
   


TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
      title: Text('WhatsApp',style: TextStyle(fontSize:25)),
      actions: [IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: null),
      IconButton(icon: Icon(Icons.more_vert,color: Colors.white), onPressed: null)
      ], 
      bottom: TabBar(
        controller: _tabController,
        tabs: tabs, 
      ),
      ),
      body: TabBarView(
        controller:_tabController,
         children: [
    CameraPage(),
    ChatsPage(),
    StatusPage(),
    CallsPage(),
      
         ],



        )
      
      
      
    );
  }
}