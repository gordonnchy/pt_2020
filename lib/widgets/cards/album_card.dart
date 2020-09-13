import 'dart:ui';

import 'package:flutter/material.dart';

import '../../styles.dart';

class AlbumCard extends StatelessWidget {
  final bool isHot;
  final String title;
  final String subtitle;
  final String details;
  final int comments;
  final String cover;

  AlbumCard(
      {this.isHot,
      this.title,
      this.comments,
      this.cover,
      this.subtitle,
      this.details});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 200,
        margin: EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            image: AssetImage(cover),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            // Image.asset(
            //   cover,
            //   width: 600,
            //   height: 200,
            //   fit: BoxFit.fitWidth,
            // ),
            // card top
            Align(
              alignment: Alignment.topRight,
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    isHot
                        ? Chip(
                            label: Text('isHot'),
                            backgroundColor: Colors.pink,
                            labelStyle: Styles.textDefault
                                .copyWith(color: Colors.white),
                          )
                        : Container(),
                    SizedBox(width: 8.0),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.comment,
                            color: Colors.white,
                          ),
                          SizedBox(width: 6.0),
                          Text(
                            comments.toString(),
                            style: Styles.textDefault
                                .copyWith(color: Colors.white, fontSize: 18.0),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            // card footer
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black38,
                      Colors.black12,
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Styles.headerLarge.copyWith(color: Colors.white),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      details,
                      style: Styles.textDefault.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
