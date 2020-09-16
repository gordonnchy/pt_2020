import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:scoped_model/scoped_model.dart';

import '../scoped_model/albums.dart';

class DiscoverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant(
        builder: (BuildContext context, Widget child, AlbumModel model) {
      return CustomScrollView(
        slivers: [
          SliverStaggeredGrid(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Card(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(model.albums[index].cover),
                      ),
                    ),
                  ),
                );
              },
            ),
            gridDelegate: SliverStaggeredGridDelegateWithFixedCrossAxisCount(
                staggeredTileCount: model.albums.length,
                crossAxisCount: 2,
                staggeredTileBuilder: (int index) {
                  return StaggeredTile.count(2, index.isOdd ? 2 : 1);
                },
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0),
          ),
        ],
      );
    });
  }
}
