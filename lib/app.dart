import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import './constants/routes.dart';

import 'pages/welcome.dart';
import './pages/home.dart';
import './scoped_model/albums.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<AlbumModel>(
      model: AlbumModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.purple,
          accentColor: Colors.deepPurple,
        ),
        // home: WelcomePage(),
        routes: {
          '/': (BuildContext context) => WelcomePage(),
          homePage: (BuildContext context) => HomePage(),
        },
      ),
    );
  }
}
