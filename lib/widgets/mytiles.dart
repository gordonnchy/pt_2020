import 'package:flutter/material.dart';
import '../models/messages.dart';

class Mytiles extends StatelessWidget {
  final Category category;
  const Mytiles({Key key, @required this.category}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
    backgroundImage: AssetImage(category.image)
    ),
  title: Text(category.title),
  subtitle: Text(category.sms),
  trailing: Text(category.time)
    );
  }
}