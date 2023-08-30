import 'package:flutter/material.dart';
import 'package:mma_mse/Search/buttonMode.dart';
import 'saftyData.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mma_mse/Drawer.dart';
import 'package:mma_mse/floationPanel/PanelMain.dart';
import 'package:mma_mse/floors/EqubButton.dart';

class saftyMain extends StatefulWidget {
  saftyMain({Key? key}) : super(key: key);

  @override
  _saftyMainState createState() => _saftyMainState();
}

class _saftyMainState extends State<saftyMain> {
  double _screenWidth = 0;
  double _screenH = 0;
  List toolDataList = safetyData;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    final ScrollController controller = ScrollController();
    return Scaffold(
      bottomNavigationBar: ButtomMenu(),
      appBar: AppBar(
          title: Text("Matls Eng Safety Guide"),
          backgroundColor: Colors.grey[500],
          actions: [
            IconButton(
                padding: EdgeInsets.fromLTRB(10, 3, 19, 3),
                iconSize: 32,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(FontAwesomeIcons.timesCircle))
          ]),
      drawer: standardDrawer(header: "Matls Safety Guide"),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            for (var i = 0; i < toolDataList.length; i++)
              EqubButton(
                backColor: toolDataList[i].bgColor,
                function: "Safety",
                pageTo: toolDataList[i].pageTo,
                backImg: toolDataList[i].backImg,
                name: toolDataList[i].name,
              ),
          ],
        ),
      ),
    );
  }
}
