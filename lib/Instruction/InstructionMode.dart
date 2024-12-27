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

  Widget _buildInstructionCard(dynamic instruction, int index) {
    return instruction.type != "tit"
        ? Card(
            color: instruction.materialcolor.withOpacity(0.85),
            margin: EdgeInsets.symmetric(
              horizontal: _screenW * 0.04,
              vertical: _screenH * 0.01,
            ),
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: YoutubePlayer(
                    controller: instruction.videoController,
                    liveUIColor: Colors.amber,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(_screenW * 0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        instruction.title,
                        style: TextStyle(
                          fontSize: _screenW * 0.05,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: _screenH * 0.01),
                      Text(
                        instruction.subtitle,
                        style: TextStyle(
                          fontSize: _screenW * 0.035,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        : Container(
            margin: EdgeInsets.symmetric(
              horizontal: _screenW * 0.04,
              vertical: _screenH * 0.02,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: instruction.materialcolor.withOpacity(0.1),
              border: Border.all(
                width: 2,
                color: instruction.materialcolor,
              ),
            ),
            padding: EdgeInsets.all(_screenW * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  instruction.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: _screenW * 0.045,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: _screenH * 0.02),
                Text(
                  instruction.subtitle,
                  style: TextStyle(
                    fontSize: _screenW * 0.035,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          );
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
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
            padding: EdgeInsets.symmetric(horizontal: _screenW * 0.04),
            iconSize: _screenW * 0.07,
            onPressed: () => Navigator.pop(context),
            icon: Icon(FontAwesomeIcons.timesCircle),
          )
        ],
        title: Text(
          "${widget.name} Instruction",
          style: TextStyle(
            fontSize: _screenW * 0.05,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      drawer: buehlerCInstr(),
      body: SingleChildScrollView(
        controller: widget.controller,
        child: Column(
          children: [
            ...widget.instructionList.asMap().entries.map(
                  (entry) => _buildInstructionCard(entry.value, entry.key),
                ),
            SizedBox(height: _screenH * 0.04),
          ],
        ),
      ),
    );
  }
}
