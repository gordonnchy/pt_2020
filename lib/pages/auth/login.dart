import 'package:flutter/material.dart';
import '../../styles.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // String _emailValue = '';
  // String _passwordValue = '';
  String email = 'godson@gmail.com';
  String password = '12345';
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();
  final _emailTextController = TextEditingController();
  final _passTextController = TextEditingController();

  Widget _buildEmailTextFormField() {
    return TextFormField(
      validator: (String value) {
        if (value != '') {
          return null;
        }
        return 'This field is required';
      },
      // onChanged: (String value) {
      //   setState(() {
      //     _emailValue = value;
      //   });
      // },
      style: Styles.textDefault,
      controller: _emailTextController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.0),
          borderSide: BorderSide(width: 8.0),
        ),
        hintText: 'E-Mail',
        hintStyle: Styles.textDefault,
        errorStyle:
            Styles.textDefault.copyWith(color: Colors.red, fontSize: 14.0),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
      ),
      autofocus: true,
    );
  }

  Widget _buildPasswordTextFormField() {
    return TextFormField(
      validator: (String value) {
        if (value != '') return null;
        return 'This field is required';
      },
      // onChanged: (String value) {
      //   setState(() {
      //     _passwordValue = value;
      //   });
      // },
      style: Styles.textDefault,
      controller: _passTextController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.0),
          borderSide: BorderSide(width: 8.0),
        ),
        hintText: 'Password',
        hintStyle: Styles.textDefault,
        errorStyle:
            Styles.textDefault.copyWith(color: Colors.red, fontSize: 14.0),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
      ),
      autofocus: false,
      obscureText: true,
    );
  }

  void _submitForm() {
    if (_formKey.currentState.validate()) {
      if (_emailTextController.text == email &&
          _passTextController.text == password) {
        Navigator.pushReplacementNamed(context, '/homepage');
      } else {
        _scaffoldKey.currentState.showSnackBar(
          SnackBar(
            content: Text('Invalid email or password'),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Text(emailValue),
                Container(
                  padding: EdgeInsets.only(top: 50.0),
                  child: Text(
                    "Team Up",
                    style: Styles.headerLarge,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  "My first application",
                  style: Styles.textDefault,
                ),
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    children: [
                      _buildEmailTextFormField(),
                      SizedBox(
                        height: 10.0,
                      ),
                      _buildPasswordTextFormField(),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Forget Password?",
                        style: Styles.textDefault.copyWith(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              onPressed: _submitForm,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Text(
                                  'Login',
                                  style: Styles.buttonStyle,
                                ),
                              ),
                              color: Colors.purple,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
