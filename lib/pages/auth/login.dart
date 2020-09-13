import 'package:flutter/material.dart';

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
      controller: _emailTextController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.0),
          borderSide: BorderSide(width: 8.0),
        ),
        hintText: 'E-Mail',
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
      controller: _passTextController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.0),
          borderSide: BorderSide(width: 8.0),
        ),
        hintText: 'Password',
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
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  "My first application",
                  style: TextStyle(color: Colors.grey[400]),
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
                        "Forget Password",
                        style: TextStyle(color: Colors.purple),
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
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              color: Colors.purple,
                            ),
                          ),
                        ],
                      )
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
