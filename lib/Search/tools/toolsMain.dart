import 'package:flutter/material.dart';
import 'package:mma_mse/Search/buttonMode.dart';
import 'package:mma_mse/equipment/safty sheet/MSDS.dart';
import 'package:mma_mse/equipment/safty%20sheet/MSDSdata.dart';

class toolMain extends StatefulWidget {
  toolMain({Key key}) : super(key: key);

  @override
  _toolMainState createState() => _toolMainState();
}

class _toolMainState extends State<toolMain> {
  double _screenWidth;
  double _screenH;

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
        title: Text("Tools Main"),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          IntroButtonMode(
            pageTo: SearchListExample(),
            backImg:
                "https://github.com/RayLyu-Mac/MMA/blob/master/assest/tool.jpg?raw=true",
            title: "MSDS Sheet",
            top: _screenH / 30,
            left: _screenWidth / 40,
          )
        ],
      ),
    );
  }
}
