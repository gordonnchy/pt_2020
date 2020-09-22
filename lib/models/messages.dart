import 'package:flutter/material.dart';



class Category {
  final int id;
  final String title;
  final String image;
  final String sms;
  final String time;

  Category({@required this.id, this.title,@required this.sms, @required this.image,@required this.time});
}

List<Category> Mymessages = <Category>[
  Category(
      id: 1,
      image: 'assets/person1.jpg',
      title: 'Mary',
      sms: 'when is it?',
      time:'8:36'),
  Category(
      id: 2,
      image: 'assets/person2.jpg',
      title: 'Sis Rose',
      sms: 'Ahh that will be fine',
      time:'8:24'),
        Category(
      id: 3,
      image: 'assets/person3.jpg',
      title: 'Kido',
      sms: 'Bro what up?',
      time:'8:02'),
        Category(
      id: 4,
      image: 'assets/person4.jpg',
      title: 'Jonh',
      sms: 'I will talk to the guys about it.. ',
      time:'7:56'),
        Category(
      id: 5,
      image: 'assets/person5.jpg',
      title: 'Mike',
      sms: 'Hahah..nice one',
      time:'7:41'),
        Category(
      id: 6,
      image: 'assets/person6.jpg',
      title: 'Stephanie',
      sms: 'lol!..ur lyin!',
      time:'7:36'),
        Category(
      id: 7,
      image: 'assets/person7.jpg',
      title: 'Maggie',
      sms: 'We are going out tonight..wanna come?',
      time:'7:02'),
        Category(
      id: 8,
      image: 'assets/person14.jpg',
      title: 'Little sis',
      sms: 'Thanks bro..kisses',
      time:'6:58'),
        Category(
      id: 9,
      image: 'assets/work.jpg',
      title: 'PROJECT',
      sms: 'john:Guys where are u?',
      time:'6:30'),
      Category(
      id: 10,
      image: 'assets/person13.jpg',
      title: 'Lewis',
      sms: 'Dude,come check these hits in the studio..they ...',
      time:'6:24'),
      Category(
      id: 11,
      image: 'assets/person10.jpg',
      title: 'Lisa',
      sms: 'Cool,well I would love that as well',
      time:'6:20'),
      Category(
      id: 12,
      image: 'assets/person15.jpg',
      title: 'Tanya',
      sms: 'I am busy but we will see how it goes',
      time:'6:30'),
       
];