import 'package:flutter/material.dart';

class Category {
  final int id;
  final String title;
  final String image;

  Category({@required this.id, this.title, @required this.image});
}

List<Category> lifeStyleCategories = <Category>[
  Category(
      id: 1,
      image: 'assets/img/cup.jpeg',
      title: 'The Best Exotic Destination'),
  Category(
      id: 2,
      image: 'assets/img/house.png',
      title: 'Brownie caramels marzipan pudding bear claw cheesecake.'),
  Category(
      id: 3,
      image: 'assets/img/cup.jpeg',
      title: 'Halvah cake fruitcake danish cheesecake jujubes.'),
  Category(
      id: 4,
      image: 'assets/img/house.png',
      title: 'Chupa chups cake cupcake danish croissant chupa chups danish')
];
