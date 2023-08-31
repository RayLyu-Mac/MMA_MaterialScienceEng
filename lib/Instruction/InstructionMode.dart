import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'package:mma_mse/customTileScroll.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstructionMode extends StatefulWidget {
  InstructionMode({
    required this.instructionList,
    required this.name,
    required this.controller,
    Key? key,
  }) : super(key: key);
  final List instructionList;
  final String name;
  final ScrollController controller;

  @override
  _InstructionModeState createState() => _InstructionModeState();
}

class _InstructionModeState extends State<InstructionMode> {
  double _screenH = 0;
  double _screenW = 0;

  List titles = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenH = MediaQuery.of(context).size.height;
    _screenW = MediaQuery.of(context).size.width;
  }

  @override
  Widget build(BuildContext context) {
    Drawer buehlerCInstr() => Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  child: Column(
                children: [
                  Text(
                    "Instruction For " + widget.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: _screenW / 22,
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints.expand(
                        width: _screenW / 1.5, height: _screenH / 6.4),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assest/logocolor.png"))),
                  )
                ],
              )),
              for (var i = 0; i < widget.instructionList.length; i++)
                ScrollcustomListTile(
                    padTop: widget.instructionList[i].type == "tit" ? 15 : 0,
                    name: widget.instructionList[i].title,
                    tileColor: widget.instructionList[i].materialcolor
                        .withOpacity(widget.instructionList[i].type == "tit"
                            ? 0.95
                            : 0.2),
                    pageTo: i - 1,
                    fonts: widget.instructionList[i].type == "tit" ? 22 : 15,
                    controller: widget.controller),
              SizedBox(
                height: _screenH / 30,
              ),
            ],
          ),
        );
    return Scaffold(
      backgroundColor: Colors.amber[50],
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              padding: EdgeInsets.fromLTRB(10, 3, 19, 3),
              iconSize: 32,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(FontAwesomeIcons.timesCircle))
        ],
        title: Text(
          widget.name + " Instruction",
          style:
              TextStyle(fontSize: _screenW / 18, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: buehlerCInstr(),
      body: SingleChildScrollView(
          controller: widget.controller,
          child: Column(children: [
            for (var index = 0; index < widget.instructionList.length; index++)
              widget.instructionList[index].type != "tit"
                  ? Card(
                      color: widget.instructionList[index].materialcolor
                          .withOpacity(0.85),
                      margin: EdgeInsets.fromLTRB(20, 16, 20, 8),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0)),
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          Container(
                            height: 245,
                            width: double.infinity,
                            child: YoutubePlayer(
                              controller:
                                  widget.instructionList[index].videoController,
                              liveUIColor: Colors.amber,
                            ),
                          ),
                          SizedBox(
                            height: _screenH / 70,
                          ),
                          Text(
                            widget.instructionList[index].title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: _screenW / 22.5,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            padding:
                                EdgeInsets.symmetric(horizontal: _screenW / 30),
                            child: Text(
                              widget.instructionList[index].subtitle,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: _screenW / 33,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: _screenH / 65,
                          ),
                        ],
                      ),
                    )
                  : Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              width: 5,
                              color:
                                  widget.instructionList[index].materialcolor),
                          color: widget.instructionList[index].materialcolor
                              .withOpacity(0.5)),
                      margin: EdgeInsets.symmetric(
                          horizontal: _screenW / 20, vertical: _screenH / 25),
                      padding: EdgeInsets.symmetric(
                          horizontal: _screenW / 30, vertical: _screenH / 37),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 4,
                                        color: Colors.grey.shade100))),
                            child: Text(
                              widget.instructionList[index].title,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: _screenW / 25,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: _screenH / 50,
                          ),
                          Container(
                            width: double.infinity,
                            child: Text(
                              widget.instructionList[index].subtitle,
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: _screenW / 36),
                            ),
                          )
                        ],
                      ),
                    ),
            SizedBox(
              height: _screenH / 20,
            ),
          ])),
    );
  }
}
