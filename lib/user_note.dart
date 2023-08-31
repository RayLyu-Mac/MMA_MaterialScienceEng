import 'dart:core';
import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class user_note extends StatefulWidget {
  final String loc;
  final Color themem_color;
  const user_note({this.loc, this.themem_color, Key key}) : super(key: key);

  @override
  _user_noteState createState() => _user_noteState();
}

class _user_noteState extends State<user_note> {
  TextEditingController keyInputController = new TextEditingController();
  int _counter = 0;
  List notes = [];

  File jsonFile;
  Directory dir;
  String fileC = '';
  String fileName = "notes.json";
  List propty = [];
  bool fileExists = false;
  Map<String, dynamic> fileContent = {};
  final DateTime now = DateTime.now();
  DateTime today = new DateTime.now();
  final DateFormat formatter = DateFormat('yyyy-MM-dd');
  Map<String, Color> color_data = {
    "ML Charpy Impact": Colors.green.shade200,
    "ML UTM Machine": Colors.orange.shade200,
    "ML Rock Well Machine": Colors.pink.shade200
  };

  @override
  void initState() {
    super.initState();
    getApplicationDocumentsDirectory().then((Directory directory) {
      dir = directory;
      jsonFile = new File(dir.path + "/" + fileName);
      fileExists = jsonFile.existsSync();
      if (fileExists)
        this.setState(
            () => fileContent = json.decode(jsonFile.readAsStringSync()));
      propty.addAll(fileContent.keys.toList());
      notes.addAll(fileContent.values.toList());
    });
  }

  void _counters() {
    setState(() {
      _counter++;
    });
  }

  @override
  void dispose() {
    keyInputController.dispose();
    super.dispose();
  }

  void createFile(
      Map<String, dynamic> content, Directory dir, String fileName) {
    print("Creating file!");
    File file = new File(dir.path + "/" + fileName);

    file.createSync();
    fileExists = true;
    file.writeAsStringSync(json.encode(content));
  }

  void writeToFile(String key, dynamic value) {
    print("Writing to file!");
    Map<String, dynamic> content = {key: value};
    if (fileExists) {
      print("File exists");
      Map<String, dynamic> jsonFileContent =
          json.decode(jsonFile.readAsStringSync());
      jsonFileContent.addAll(content);
      jsonFile.writeAsStringSync(json.encode(jsonFileContent));
    } else {
      print("File does not exist!");
      createFile(content, dir, fileName);
    }
    this.setState(() => fileContent = json.decode(jsonFile.readAsStringSync()));
  }

  void removeFromFile(String key) {
    if (fileExists) {
      print("File exists");
      Map<String, dynamic> jsonFileContent =
          json.decode(jsonFile.readAsStringSync());
      jsonFileContent.remove(key);
      jsonFile.writeAsStringSync(json.encode(jsonFileContent));
    } else {
      print("File does not exist!");
    }
    this.setState(() => fileContent = json.decode(jsonFile.readAsStringSync()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Add Notes"),
                        content: TextField(
                          controller: keyInputController,
                        ),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                                setState(() {
                                  _counters();
                                  notes.add(keyInputController.text);
                                  propty.add(widget.loc);
                                  writeToFile(
                                    '$_counter,' + widget.loc,
                                    keyInputController.text,
                                  );
                                });
                              },
                              child: Text("Add New Notes"))
                        ],
                      );
                    });
              })
        ],
        backgroundColor: Colors.black,
        title: Text('User Notes',
            style: TextStyle(
                fontSize: 27,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (BuildContext context, int index) {
          return (GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return SimpleDialog(
                        elevation: 5,
                        backgroundColor: widget.themem_color,
                        title: Text("Experiment Note"),
                        children: [
                          SizedBox(
                            width: 50,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(16.0),
                                border: Border.all(
                                  width: 1.5,
                                  color: Colors.white.withOpacity(0.2),
                                )),
                            child: Text(
                              '     ' + notes[index].toString(),
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      );
                    });
              },
              child: Dismissible(
                key: Key(notes[index]),
                child: Card(
                  color: color_data[propty[index]],
                  margin: EdgeInsets.all(7),
                  elevation: 4,
                  shadowColor: widget.themem_color,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    title: Text(notes[index]),
                    subtitle: Text(propty[index] +
                        '          Time:' +
                        formatter.format(now)),
                    trailing: IconButton(
                        icon: Icon(
                          Icons.delete,
                          color: Colors.red[800],
                        ),
                        onPressed: () {
                          setState(() {
                            notes.remove(notes[index]);
                            removeFromFile(propty[index]);
                          });
                        }),
                  ),
                ),
              )));
        },
      ),
    );
  }
}
