import 'package:flutter/material.dart';

import '../constants/routes.dart';

import '../styles.dart';
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
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/img/house.png'),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/img/house.png'),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/img/cup.jpeg'),
                ),
              ],
              accountName: Text('John Doe'),
              accountEmail: Text('johndoe@yahoo.com'),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.scatter_plot),
                    title: Text('state management'),
                    onTap: () {},
                  ),
                  // data storage
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        child: ListTile(
                          title: Text('Data storage'),
                        ),
                      ),
                      Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.storage),
                            title: Text('Text file storage'),
                            onTap: () => Navigator.pushReplacementNamed(
                                context, textFileStorage),
                          ),
                          ListTile(
                            leading: Icon(Icons.storage),
                            title: Text('Shared Pref storage'),
                            onTap: () => Navigator.pushReplacementNamed(
                                context, sharedPrefStorage),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
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
        selectedLabelStyle: Styles.bottomNavBarTitle,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedLabelStyle: Styles.bottomNavBarTitle,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
            ),
            title: Text(
              'Today',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.category,
            ),
            title: Text(
              'Category',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
            ),
            title: Text(
              'Discover',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            title: Text(
              'Search',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.featured_play_list,
            ),
            title: Text(
              'Profile',
            ),
          ),
        ],
      ),
    );
  }
}
