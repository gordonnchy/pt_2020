import 'package:flutter/material.dart';

import '../styles.dart';

import '../pages/auth/login.dart';
import '../pages/auth/signup.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/diamond.png',
                height: 100,
                width: 100,
              ),
              Container(
                padding: EdgeInsets.only(top: 50.0),
                child: Text(
                  "Team Up",
                  style: Styles.headerLarge,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "My first application",
                style: Styles.textDefault,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Colors.purple,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginPage();
                        },
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Login".toUpperCase(),
                      textAlign: TextAlign.left,
                      style: Styles.bottomNavBarTitle,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Signup();
                        },
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "SignUp".toUpperCase(),
                      textAlign: TextAlign.right,
                      style: Styles.bottomNavBarTitle,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
