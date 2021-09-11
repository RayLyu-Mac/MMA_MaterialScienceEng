import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'package:mma_mse/customTileScroll.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstructionMode extends StatefulWidget {
  InstructionMode({
    @required this.instructionList,
    @required this.name,
    Key key,
  }) : super(key: key);
  final List instructionList;
  final String name;

  @override
  _InstructionModeState createState() => _InstructionModeState();
}

class _InstructionModeState extends State<InstructionMode> {
  double _screenH;
  double _screenW;
  final ScrollController controller = ScrollController();
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
                child: Text("Instruction For" + widget.name),
              ),
              for (var i = 0; i < widget.instructionList.length; i++)
                ScrollcustomListTile(
                    padTop: widget.instructionList[i].type == "ins" ? 0 : 15,
                    name: widget.instructionList[i].title,
                    tileColor: widget.instructionList[i].materialcolor
                        .withOpacity(widget.instructionList[i].type == "ins"
                            ? 0.2
                            : 0.95),
                    pageTo: i - 1,
                    fonts: 13,
                    controller: controller),
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
          widget.name + "instruction",
          style:
              TextStyle(fontSize: _screenH / 35, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: buehlerCInstr(),
      body: SingleChildScrollView(
          child: Column(children: [
        for (var index = 0; index < widget.instructionList.length; index++)
          widget.instructionList[index].type == "ins"
              ? GestureDetector(
                  child: Card(
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
                              fontSize: _screenH / 34,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: _screenW / 30),
                          child: Text(
                            widget.instructionList[index].subtitle,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: _screenH / 40),
                          ),
                        ),
                        SizedBox(
                          height: _screenH / 65,
                        ),
                      ],
                    ),
                  ),
                )
              : Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          width: 5,
                          color: widget.instructionList[index].materialcolor),
                      color: widget.instructionList[index].materialcolor
                          .withOpacity(0.5)),
                  margin: EdgeInsets.symmetric(
                      horizontal: _screenW / 20, vertical: _screenH / 25),
                  padding: EdgeInsets.symmetric(
                      horizontal: _screenW / 30, vertical: _screenH / 40),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 4, color: Colors.grey.shade100))),
                        child: Text(
                          widget.instructionList[index].title,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: _screenH / 30),
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
                          style: TextStyle(fontSize: _screenH / 36),
                        ),
                      )
                    ],
                  ),
                )
      ])),
    );
  }
}
