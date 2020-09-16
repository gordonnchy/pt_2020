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