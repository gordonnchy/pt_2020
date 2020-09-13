import 'package:flutter/material.dart';

import '../models/album.dart';
import '../widgets/header.dart';
import '../widgets/cards/album_card.dart';

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
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return AlbumCard(
                isHot: albums[index].isHot,
                comments: albums[index].comments,
                cover: albums[index].cover,
                title: albums[index].title,
                subtitle: albums[index].subtitle,
                details: albums[index].details,
              );
            },
            childCount: albums.length,
          ),
        )
      ],
    );
  }
}
