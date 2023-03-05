import 'package:flutter/material.dart';
import 'package:mma_mse/Search/Search_page/search_main.dart';
import 'package:mma_mse/Search/tools/phaseDiagram/zoomIn.dart';
import '../buttonMode.dart';

class direction_main extends StatefulWidget {
  direction_main({Key? key}) : super(key: key);

  @override
  _direction_mainState createState() => _direction_mainState();
}

class _direction_mainState extends State<direction_main> {
  double _screenWidth = 0;
  double _screenH = 0;
  // (page1(),page2(),page3(),page4()) //
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Direction For Material Eng",
            style: TextStyle(
                color: Colors.white,
                fontSize: _screenH / 37,
                fontWeight: FontWeight.w700)),
      ),
      body: Row(
        children: [
          SizedBox(
            width: _screenWidth / 15,
          ),
          Column(
            children: [
              SizedBox(
                height: _screenH / 25,
              ),
              IntroButtonMode(
                  str: false,
                  pageTo: ZoomInPhaseD(
                    imgPD:
                        "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/search/direction/biomatC%20(1).png?raw=true",
                  ),
                  backImg:
                      "https://github.com/RayLyu-Mac/MMA/blob/master/assest/search/direction/biomat.jpg?raw=true",
                  title: "Biomaterial"),
              SizedBox(
                height: _screenH / 25,
              ),
              IntroButtonMode(
                  str: false,
                  pageTo: ZoomInPhaseD(
                    imgPD:
                        "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/search/direction/biomatC%20(2).png?raw=true",
                  ),
                  backImg:
                      "https://github.com/RayLyu-Mac/MMA/blob/master/assest/search/direction/data.jpg?raw=true",
                  title: "Data Managment"),
            ],
          ),
          SizedBox(
            width: _screenWidth / 12,
          ),
          Column(
            children: [
              SizedBox(
                height: _screenH / 25,
              ),
              IntroButtonMode(
                  str: false,
                  pageTo: ZoomInPhaseD(
                    imgPD:
                        "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/search/direction/biomatC%20(4).png?raw=true",
                  ),
                  backImg:
                      "https://github.com/RayLyu-Mac/MMA/blob/master/assest/search/direction/smart.jpg?raw=true",
                  title: "Smart Material"),
              SizedBox(
                height: _screenH / 25,
              ),
              IntroButtonMode(
                  str: false,
                  pageTo: ZoomInPhaseD(
                    imgPD:
                        "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/search/direction/biomatC%20(3).png?raw=true",
                  ),
                  backImg:
                      "https://github.com/RayLyu-Mac/MMA/blob/master/assest/search/direction/emaf.jpg?raw=true",
                  title: "Manufacutring"),
            ],
          )
        ],
      ),
    );
  }
}
