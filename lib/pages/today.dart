import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../widgets/header.dart';
import '../widgets/cards/album_card.dart';

import '../scoped_model/albums.dart';

class TodayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant(
      builder: (BuildContext context, Widget child, AlbumModel model) {
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
                    isHot: model.albums[index].isHot,
                    comments: model.albums[index].comments,
                    cover: model.albums[index].cover,
                    title: model.albums[index].title,
                    subtitle: model.albums[index].subtitle,
                    details: model.albums[index].details,
                  );
                },
                childCount: model.albums.length,
              ),
            )
          ],
        );
      },
    );
  }
}
