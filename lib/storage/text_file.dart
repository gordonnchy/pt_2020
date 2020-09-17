import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class TextFileStorage extends StatefulWidget {
  @override
  _TextFileStorageState createState() => _TextFileStorageState();
}

class _TextFileStorageState extends State<TextFileStorage> {
  final _textController = TextEditingController();

  Future<String> _localPath() async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path; //home/directory
  }

  Future<File> _localFile() async {
    final path = await _localPath();

    return File('$path/data.txt'); //home/directory/data.txt
  }

  Future<File> writeToFile(String message) async {
    File file = await _localFile();

    return file.writeAsString('$message');
  }

  Future<String> readFromFile() async {
    try {
      File file = await _localFile();

      String data = await file.readAsString();

      return data;
    } catch (e) {
      return "Nothing saved yet!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Files'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _textController,
            decoration: InputDecoration(labelText: 'Type some text'),
          ),
          RaisedButton.icon(
            onPressed: () {
              writeToFile(_textController.text).then((file) async {
                int length = await file.length();
                if (length > 0) {
                  _textController.text = '';
                  setState(() {
                    
                  });
                }
              });
            },
            icon: Icon(Icons.save),
            label: Text('Save Data'),
          ),
          FutureBuilder(
            future: readFromFile(),
            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData != null) {
                  return Text(snapshot.data);
                }
              }

              return Container();
            },
          )
        ],
      ),
    );
  }
}
