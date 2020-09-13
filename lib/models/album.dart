// blueprint of the album
import 'package:flutter/material.dart';

class Album {
  final String cover;
  final String title;
  final String subtitle;
  final bool isHot;
  final int authorId;
  final String details;
  final int id;
  final int comments;

  Album({
    @required this.cover,
    @required this.title,
    @required this.subtitle,
    @required this.isHot,
    @required this.authorId,
    @required this.details,
    @required this.id,
    @required this.comments,
  });
}

// mock data
List<Album> albums = [
  Album(
    cover: 'assets/img/cup.jpeg',
    title: 'First Album',
    subtitle: 'Monday',
    details: 'This album is a lit',
    authorId: 1,
    id: 1,
    isHot: true,
    comments: 34,
  ),
  Album(
    cover: 'assets/img/house.png',
    title: 'Second Album',
    subtitle: 'Tuesday',
    details: 'Haunted House story',
    authorId: 1,
    id: 2,
    isHot: true,
    comments: 24,
  ),
  Album(
    cover: 'assets/img/cup.jpeg',
    title: 'Third Album',
    subtitle: 'Wednesday',
    details: 'Laugh now, play later',
    authorId: 1,
    id: 3,
    isHot: false,
    comments: 5,
  ),
];
