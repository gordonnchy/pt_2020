import 'package:flutter/material.dart';
import 'package:flutter_app/constants/routes.dart';

import 'pages/welcome.dart';
import './pages/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: WelcomePage(),
      routes: {
        '/': (BuildContext context) => WelcomePage(),
        homePage: (BuildContext context) => HomePage(),
      },
    );
  }
}
