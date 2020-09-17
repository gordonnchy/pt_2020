import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefStorage extends StatefulWidget {
  @override
  _SharedPrefStorageState createState() => _SharedPrefStorageState();
}

class _SharedPrefStorageState extends State<SharedPrefStorage> {
  String _data = '';
  TextEditingController _textFieldController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  _loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String data = prefs.getString('msg');

    setState(() {
      if (data != null && data.isNotEmpty) {
        _data = data;
      }
    });
  }

  Future<bool> _saveData(String msg) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.setString('msg', msg);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Prefs'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _textFieldController,
            decoration: InputDecoration(labelText: 'Type some data'),
          ),
          RaisedButton.icon(
            onPressed: () {
              _saveData(_textFieldController.text).then((bool value) {
                if (value) {
                  _textFieldController.text = '';
                  _loadData();
                }
              });
            },
            icon: Icon(Icons.save),
            label: Text('Save data'),
          ),
          Text('$_data'),
        ],
      ),
    );
  }
}
