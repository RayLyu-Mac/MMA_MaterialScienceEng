import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mma_mse/Drawer.dart';
import 'tooData.dart';
import 'package:mma_mse/floationPanel/PanelMain.dart';
import 'package:mma_mse/floors/EqubButton.dart';

class toolMain extends StatefulWidget {
  toolMain({Key? key}) : super(key: key);

  @override
  _toolMainState createState() => _toolMainState();
}

class _toolMainState extends State<toolMain> {
  List<ToolData> toolDataList = [];

  @override
  void initState() {
    super.initState();
    toolDataList = createToolList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: ButtomMenu(),
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              for (var i = 0; i < toolDataList.length; i++)
                EqubButton(
                  backColor: toolDataList[i].bgColor,
                  function: "Tools",
                  pageTo: toolDataList[i].pageTo,
                  backImg: toolDataList[i].backImg,
                  name: toolDataList[i].name,
                ),
            ],
          ),
        ));
  }
}
