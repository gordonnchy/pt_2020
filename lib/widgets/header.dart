import 'package:flutter/material.dart';

import '../styles.dart';

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
        Text(tag, style: Styles.textDefault.copyWith(fontSize: 14.0)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Styles.headerLarge.copyWith(fontSize: 22.0, fontWeight: FontWeight.bold),
            ),
            GestureDetector(
              onTap: () {
                print('tapped');
              },
              child: Chip(
                label: Text(
                  buttonText,
                  style: Styles.textDefault.copyWith(fontSize: 14.0, color: Colors.white),
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
