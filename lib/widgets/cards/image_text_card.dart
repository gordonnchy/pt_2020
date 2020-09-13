import 'package:flutter/material.dart';
import 'package:flutter_app/models/category.dart';

class ImageTextCard extends StatelessWidget {
  final Category category;

  const ImageTextCard({Key key, @required this.category}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Stack(children: <Widget>[
      //image1
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  category.image,
                ))),
      ),

      //text
      Positioned(
        bottom: 80,
        child: Container(
            width: _size.width,
            padding: EdgeInsets.only(left: 20),
            child: Text(
              category.title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )),
      ),
    ]);
  }


}
