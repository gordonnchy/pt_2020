import 'package:scoped_model/scoped_model.dart';

import '../models/album.dart';

class AlbumModel extends Model {
  // mock data
  List<Album> _albums = [
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

  List<Album> get albums => _albums;
}
