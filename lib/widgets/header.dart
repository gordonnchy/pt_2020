import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String tag;
  final String title;
  final String buttonText;

  HeaderWidget({this.tag = 'RECENT POSTS', this.title, this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(tag),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w900,
              ),
            ),
            GestureDetector(
              onTap: () {
                print('tapped');
              },
              child: Chip(
                label: Text(
                  buttonText,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                backgroundColor: Colors.pink,
              ),
            )
          ],
        )
      ],
    );
  }
}
