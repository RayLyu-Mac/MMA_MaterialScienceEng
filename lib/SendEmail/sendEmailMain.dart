import 'package:flutter/material.dart';
import 'dart:core';
import 'dart:async';
import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

class EmailContent extends StatefulWidget {
  EmailContent(
      {@required this.locationOfEqup,
      @required this.nameOfEqup,
      @required this.emailTo,
      Key key})
      : super(key: key);
  final String locationOfEqup;
  final String nameOfEqup;
  final String emailTo;
  final DateTime now = DateTime.now();

  @override
  _EmailContentState createState() => _EmailContentState();
}

class _EmailContentState extends State<EmailContent> {
  TextEditingController name = new TextEditingController();
  TextEditingController errorMessage = new TextEditingController();

  @override
  void dispose() {
    name.dispose();
    errorMessage.dispose();
    super.dispose();
  }

  double _screenWidth;
  double _screenH;
  List<String> attachments = [];
  bool isHTML = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Report Issue to Equipment Manager",
          style: TextStyle(fontSize: _screenH / 40),
        ),
        backgroundColor: Colors.black,
      ),
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned(
              top: _screenH / 45,
              left: _screenWidth / 15,
              child: Text(
                "*Please make sure the error report is valid",
                style: TextStyle(color: Colors.redAccent),
              )),
          Positioned(
            top: _screenH / 15,
            left: _screenWidth / 15,
            child: Container(
              constraints: BoxConstraints.expand(
                  width: _screenWidth / 1.15, height: _screenH / 8),
              child: TextField(
                controller: name,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      gapPadding: 6,
                      borderSide: BorderSide(width: 3.0, color: Colors.black)),
                  labelText: "Name",
                  hintText: "Write your name here",
                  labelStyle: TextStyle(
                      fontSize: _screenH / 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  suffixIcon: Icon(
                    Icons.supervised_user_circle,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              top: _screenH / 5.4,
              left: _screenWidth / 15,
              child: Container(
                constraints: BoxConstraints.expand(
                    width: _screenWidth / 1.15, height: _screenH / 2.5),
                child: TextField(
                  controller: errorMessage,
                  maxLines: null,
                  expands: true,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        gapPadding: 6,
                        borderSide:
                            BorderSide(width: 3.0, color: Colors.black)),
                    focusedBorder: OutlineInputBorder(
                        gapPadding: 6,
                        borderSide:
                            BorderSide(width: 3.0, color: Colors.black)),
                    labelText: "Error Message",
                    hintText: "Please be specific with the error:",
                    labelStyle: TextStyle(
                        fontSize: _screenH / 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    suffixIcon: Icon(
                      Icons.error_outline_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
              )),
          Positioned(
              top: _screenH / 1.3,
              left: _screenWidth / 11,
              child: Container(
                constraints: BoxConstraints.expand(
                    width: _screenWidth / 1.15, height: _screenH / 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black, width: 4)),
                child: InkWell(
                    splashColor: Colors.blueGrey,
                    child: FlatButton.icon(
                        onPressed: () => send(),
                        icon: Icon(Icons.email_rounded),
                        label: Text("Contact Manager"))),
              )),
          Positioned(
              top: _screenH / 1.8,
              left: _screenWidth / 50,
              child: Padding(
                padding: EdgeInsets.all(3.0),
                child: Wrap(
                  children: [
                    for (var i = 0; i < attachments.length; i++)
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                              flex: 0,
                              child: Container(
                                margin: EdgeInsets.all(10),
                                width: _screenWidth / 6,
                                height: _screenH / 16,
                                child: Image.file(File(attachments[i]),
                                    fit: BoxFit.cover),
                              )),
                          IconButton(
                            icon: Icon(Icons.remove_circle),
                            onPressed: () => {_removeAttachment(i)},
                          )
                        ],
                      )
                  ],
                ),
              )),
          Positioned(
            top: _screenH / 1.7,
            left: _screenWidth / 1.2,
            child: IconButton(
              icon: Icon(
                Icons.attach_file_outlined,
                size: _screenH / 26,
              ),
              onPressed: _openImagePicker,
            ),
          )
        ],
      ),
    );
  }

  Future _openImagePicker() async {
    final pick = await ImagePicker().getImage(source: ImageSource.camera);
    if (pick != null) {
      setState(() {
        attachments.add(pick.path);
      });
    }
  }

  void _removeAttachment(int index) {
    setState(() {
      attachments.removeAt(index);
    });
  }

  Future<void> send() async {
    final Email email = Email(
      body: "Dear Manager:\nMy name is " +
          name.text +
          " " +
          "The" +
          " " +
          widget.nameOfEqup +
          " " +
          "in" +
          " " +
          widget.locationOfEqup +
          " " +
          "met " +
          errorMessage.text +
          "\nCould you please come over and help me to fix this?\nReally appreciate your time and help\n \nSincerely\n" +
          name.text +
          ":)",
      subject:
          "Issue Relate to " + widget.locationOfEqup + " " + widget.nameOfEqup,
      recipients: [widget.emailTo],
      attachmentPaths: attachments,
    );

    String platformResponse;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    try {
      await FlutterEmailSender.send(email);
      platformResponse = 'success';
    } catch (error) {
      platformResponse = error.toString();
    }

    if (!mounted) return;

    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(platformResponse),
    ));
  }
}
