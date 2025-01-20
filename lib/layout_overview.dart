import 'dart:math';
import 'package:flutter/material.dart';
import 'fancyButton.dart';
import 'floors/floor2.dart';
import 'floors/floor3.dart';
import 'floors/floor1.dart';
import 'Drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
//import 'package:qrscan/qrscan.dart' as scanner;
import 'package:mma_mse/wholeQR.dart';
import 'package:mma_mse/floationPanel/PanelMain.dart';
import 'package:clay_containers/clay_containers.dart';

const String BUILDING_FULL_NAME = "John Hodgins Engineering Building (JHE)";
const String BUILDING_SHORT_NAME = "JHE Building";

class layout_overview extends StatefulWidget {
  layout_overview({Key? key}) : super(key: key);

  @override
  _layout_overviewState createState() => _layout_overviewState();
}

class _layout_overviewState extends State<layout_overview> {
  double _screenWidth = 0;
  double _screenH = 0;
  final List<FloorData> floors = [
    FloorData(
      name: "Floor I",
      icon: Icons.layers,
      color: Colors.orange[600]!,
      page: floor1(eye: false, fire: false),
      description: "Undergraduate Teaching Labs",
    ),
    FloorData(
      name: "Floor II",
      icon: Icons.layers,
      color: Colors.green[600]!,
      page: floor2(eye: false, fire: false),
      description: "Teaching Labs & Research Facilities",
    ),
    FloorData(
      name: "Floor III",
      icon: Icons.layers,
      color: Colors.blue[700]!,
      page: floor3(eye: false),
      description: "MSE Office & Graduate Facilities",
    ),
  ];

  static const double kPadding = 17.0;
  static const double kDepth = 16.0;
  static const double kIntensity = 0.8;
  static const Color kBaseColor = Color.fromARGB(255, 190, 209, 235);

  BoxDecoration _getNeumorphicDecoration({bool isPressed = false}) {
    return BoxDecoration(
      color: kBaseColor,
      borderRadius: BorderRadius.circular(kDepth),
      boxShadow: [
        BoxShadow(
          color: Colors.white,
          offset: Offset(-5, -5),
          blurRadius: 10,
          spreadRadius: isPressed ? 0 : 1,
        ),
        BoxShadow(
          color: Colors.grey[400]!,
          offset: Offset(5, 5),
          blurRadius: 10,
          spreadRadius: isPressed ? 0 : 1,
        ),
      ],
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBaseColor,
      bottomNavigationBar: BottomMenu(),
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Building Layout",
          style: TextStyle(
            fontSize: (_screenH * 0.026).clamp(18.0, 24.0),
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            padding: EdgeInsets.symmetric(horizontal: 14),
            icon: Icon(Icons.close, size: _screenH * 0.032),
            onPressed: () => Navigator.pop(context),
            color: Colors.white,
          ),
        ],
        backgroundColor: Colors.black87,
      ),
      drawer: StandardNavigationDrawer(headerTitle: "JHE Layout"),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.grey[100]!.withOpacity(0.9),
                Colors.grey[50]!.withOpacity(0.9),
              ],
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(kPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildBuildingImage(),
                      SizedBox(height: _screenH * 0.02),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: kPadding),
                  child: Column(
                    children:
                        floors.map((floor) => _buildFloorCard(floor)).toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBuildingImage() {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          height: min(_screenH * 0.32, 300),
          width: double.infinity,
          decoration: _getNeumorphicDecoration(),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(kDepth),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  "assest/JHE.jpg",
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.7),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 16,
                  right: 16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        BUILDING_FULL_NAME,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: min(24, constraints.maxWidth * 0.06),
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              offset: Offset(0, 2),
                              blurRadius: 4,
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildFloorCard(FloorData floor) {
    double titleSize = (_screenH * 0.022).clamp(16.0, 22.0);
    double descriptionSize = (_screenH * 0.016).clamp(12.0, 16.0);

    return Padding(
      padding: EdgeInsets.only(bottom: _screenH * 0.02),
      child: ClayContainer(
        height: _screenH * 0.13,
        depth: kDepth.toInt(),
        spread: kIntensity,
        borderRadius: 15,
        color: kBaseColor,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(15),
            onTap: () => Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.rightToLeft,
                child: floor.page,
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(kPadding * 0.7),
              child: Row(
                children: [
                  ClayContainer(
                    height: _screenH * 0.065,
                    width: _screenH * 0.06,
                    depth: kDepth.toInt(),
                    spread: kIntensity,
                    borderRadius: 14,
                    color: floor.color.withOpacity(0.2),
                    child: Icon(
                      floor.icon,
                      color: floor.color,
                      size: _screenH * 0.03,
                    ),
                  ),
                  SizedBox(width: kPadding * 0.75),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          floor.name,
                          style: TextStyle(
                            fontSize: titleSize,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          floor.description,
                          style: TextStyle(
                            fontSize: descriptionSize,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.grey[600],
                    size: _screenH * 0.03,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FloorData {
  final String name;
  final IconData icon;
  final Color color;
  final Widget page;
  final String description;

  FloorData({
    required this.name,
    required this.icon,
    required this.color,
    required this.page,
    required this.description,
  });
}
