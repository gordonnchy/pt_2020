import 'package:flutter/material.dart';

import '../widgets/header.dart';

class TodayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              HeaderWidget(
                tag: 'RECENT POSTS',
                title: 'LIFESTYLE',
                buttonText: 'SEE ALL',
              ),
            ],
          ),
        ),
        SliverGrid.count(
          crossAxisCount: 2,
          children: List.generate(
            10,
            (index) => Card(
              child: Center(
                child: Text(
                  index.toString(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
