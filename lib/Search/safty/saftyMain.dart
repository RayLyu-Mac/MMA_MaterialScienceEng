import 'package:flutter/material.dart';
import 'saftyData.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mma_mse/Drawer.dart';
import 'package:mma_mse/floationPanel/PanelMain.dart';
import 'package:mma_mse/floors/EqubButton.dart';

class SafetyMain extends StatefulWidget {
  SafetyMain({Key? key}) : super(key: key);

  @override
  _SafetyMainState createState() => _SafetyMainState();
}

class _SafetyMainState extends State<SafetyMain> {
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
      bottomNavigationBar: BottomMenu(),
      appBar: AppBar(
        title: Text("Materials Engineering Safety Guide"),
        backgroundColor: Colors.grey[500],
        actions: [
          IconButton(
            padding: EdgeInsets.fromLTRB(10, 3, 19, 3),
            iconSize: 32,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(FontAwesomeIcons.timesCircle),
          ),
        ],
      ),
      drawer: StandardNavigationDrawer(headerTitle: "Materials Safety Guide"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Safety Resources",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade800,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              for (var i = 0; i < toolDataList.length; i++)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: EqubButton(
                    backColor: toolDataList[i].bgColor,
                    function: "Safety",
                    pageTo: toolDataList[i].pageTo,
                    backImg: toolDataList[i].backImg,
                    name: toolDataList[i].name,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
