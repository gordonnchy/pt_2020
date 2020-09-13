import 'package:flutter/material.dart';

import './category.dart';
import './discover.dart';
import './profile.dart';
import './search.dart';
import './today.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  List<Widget> _pages = [
    TodayPage(),
    CategoryPage(),
    DiscoverPage(),
    SearchPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 10.0, right: 10.0),
        child: _pages[_index],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today,
              ),
              title: Text(
                'Today',
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.category,
              ),
              title: Text(
                'Category',
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.star,
              ),
              title: Text(
                'Discover',
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              title: Text(
                'Search',
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.featured_play_list,
              ),
              title: Text(
                'Profile',
              )),
        ],
      ),
    );
  }
}
