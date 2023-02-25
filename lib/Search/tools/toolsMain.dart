import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mma_mse/Search/buttonMode.dart';
import 'package:mma_mse/Drawer.dart';
import 'tooData.dart';

class toolMain extends StatefulWidget {
  toolMain({Key? key}) : super(key: key);

  @override
  _toolMainState createState() => _toolMainState();
}

class _toolMainState extends State<toolMain> {
  double _screenWidth = 0;
  double _screenH = 0;
  List<ToolData> toolDataList = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  void initState() {
    super.initState();
    toolDataList = createToolList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                padding: EdgeInsets.fromLTRB(10, 3, 19, 3),
                iconSize: 32,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(FontAwesomeIcons.timesCircle))
          ],
          backgroundColor: Colors.grey[500],
          title: Text("Malts Eng Tool Box"),
        ),
        backgroundColor: Colors.grey[200],
        drawer: standardDrawer(header: "Matls Tool Box"),
        body: SafeArea(
          child: Stack(
            children: [
              for (var i = 0; i < toolDataList.length; i++)
                IntroButtonMode(
                  str: true,
                  pageTo: toolDataList[i].pageTo,
                  backImg: toolDataList[i].backImg,
                  title: toolDataList[i].name,
                  positionCode: toolDataList[i].posCode,
                ),
            ],
          ),
        ));
  }
}
