import 'package:childrens_app/widgets/mytiles.dart';
import 'package:flutter/material.dart';
import '../models/messages.dart';


class ChatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Mymessages.length,
      itemBuilder: (context, index) => Container(

        child: Mytiles(
          category: Mymessages[index],
        ),
      ),
    );
      
    
  }
}