import 'package:mma_mse/floationPanel/PanelMain.dart';
import 'equb_available.dart';
import 'equb_ava_data.dart';
import 'package:flutter/material.dart';
import 'package:mma_mse/customTileScroll.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class equb_main extends StatefulWidget {
  const equb_main({Key? key}) : super(key: key);

  @override
  _equb_mainState createState() => _equb_mainState();
}

class _equb_mainState extends State<equb_main> {
  late HeroType _heroType;
  double _screenWidth = 0;

  List equipments = [];
  List code = [];
  String titleForCsv = '';
  List<Widget> pT = [];
  double co = 0.5;
  double _screenH = 0;
  Color col = Colors.black;
  final ScrollController controller = ScrollController();
  Color tensile = Colors.amber.shade100;
  Color hardness = Colors.blueGrey.shade100;
  Color microsco = Colors.purple.shade100;
  Color furnace = Colors.redAccent.shade100;
  Color cutter = Colors.greenAccent.shade100;
  Color mountP = Colors.indigo.shade100;
  Color polish = Colors.lightBlue.shade100;
  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {});
    });
    for (var eq = 0; eq < equipmentList.length; eq++) {
      equipments.add(equipmentList[eq].title);
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    Drawer searchEquipMain() => Drawer(
            child: ListView(children: [
          DrawerHeader(
              child: Column(
            children: [
              Text(
                "Equipment Avaiable in MSE",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                constraints: BoxConstraints.expand(
                    width: _screenWidth / 1.5, height: 90),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assest/logocolor.png"))),
              )
            ],
          )),
          Divider(
            height: 1,
            thickness: 7,
            color: Colors.grey[600],
          ),
          ExpansionTile(
            backgroundColor: tensile,
            title: Text(
              "Tensile Machine",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            children: [
              ScrollcustomListTile(
                  name: equipments[0],
                  pageTo: 0,
                  fonts: 13,
                  controller: controller),
              ScrollcustomListTile(
                  name: equipments[1],
                  pageTo: 1,
                  fonts: 13,
                  controller: controller),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          ExpansionTile(
            backgroundColor: hardness,
            title: Text(
              "Hardness Tester",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            children: [
              ScrollcustomListTile(
                  name: equipments[2],
                  pageTo: 2,
                  fonts: 13,
                  controller: controller),
              ScrollcustomListTile(
                  name: equipments[3],
                  pageTo: 3,
                  fonts: 13,
                  controller: controller),
              ScrollcustomListTile(
                  name: equipments[4],
                  pageTo: 4,
                  fonts: 13,
                  controller: controller),
              ScrollcustomListTile(
                  name: equipments[5],
                  pageTo: 5,
                  fonts: 13,
                  controller: controller),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          ExpansionTile(
            backgroundColor: microsco,
            title: Text(
              "Microscope",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            children: [
              ScrollcustomListTile(
                  name: equipments[6],
                  pageTo: 6,
                  fonts: 13,
                  controller: controller),
              ScrollcustomListTile(
                  name: equipments[7],
                  pageTo: 7,
                  fonts: 13,
                  controller: controller),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          ExpansionTile(
            backgroundColor: furnace,
            title: Text(
              "Furnace",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            children: [
              ScrollcustomListTile(
                  name: equipments[8],
                  pageTo: 8,
                  fonts: 13,
                  controller: controller),
              ScrollcustomListTile(
                  name: equipments[9],
                  pageTo: 9,
                  fonts: 13,
                  controller: controller),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          ExpansionTile(
            backgroundColor: cutter,
            title: Text(
              "Cutter",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            children: [
              ScrollcustomListTile(
                  name: equipments[10],
                  pageTo: 10,
                  fonts: 13,
                  controller: controller),
              ScrollcustomListTile(
                  name: equipments[11],
                  pageTo: 11,
                  fonts: 13,
                  controller: controller),
              ScrollcustomListTile(
                  name: equipments[12],
                  pageTo: 12,
                  fonts: 13,
                  controller: controller),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          ExpansionTile(
              backgroundColor: mountP,
              title: Text(
                "Mounting Press",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              children: [
                ScrollcustomListTile(
                    name: equipments[13],
                    pageTo: 13,
                    fonts: 13,
                    controller: controller),
                ScrollcustomListTile(
                    name: equipments[14],
                    pageTo: 14,
                    fonts: 13,
                    controller: controller),
                ScrollcustomListTile(
                    name: equipments[15],
                    pageTo: 15,
                    fonts: 13,
                    controller: controller),
              ]),
          SizedBox(
            height: 5,
          ),
          ExpansionTile(
              backgroundColor: polish,
              title: Text(
                "Polisher",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              children: [
                ScrollcustomListTile(
                    name: equipments[16],
                    pageTo: 16,
                    fonts: 13,
                    controller: controller),
                ScrollcustomListTile(
                    name: equipments[17],
                    pageTo: 17,
                    fonts: 13,
                    controller: controller),
                ScrollcustomListTile(
                    name: equipments[18],
                    pageTo: 18,
                    fonts: 13,
                    controller: controller),
                ScrollcustomListTile(
                    name: equipments[19],
                    pageTo: 19,
                    fonts: 13,
                    controller: controller),
              ]),
          ScrollcustomListTile(
              name: equipments[20],
              pageTo: 20,
              fonts: 13,
              controller: controller),
          ScrollcustomListTile(
              name: equipments[21],
              pageTo: 21,
              fonts: 13,
              controller: controller),
          ScrollcustomListTile(
              name: equipments[22],
              pageTo: 22,
              fonts: 13,
              controller: controller),
          ScrollcustomListTile(
              name: equipments[23],
              pageTo: 23,
              fonts: 13,
              controller: controller),
        ]));
    return Scaffold(
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
        title: DefaultTextStyle(
          style: const TextStyle(
              fontSize: 20.0, fontFamily: 'Horizon', color: Colors.white),
          child: Text("Equipment Avaiable in MSE"),
        ),
      ),
      drawer: searchEquipMain(),
      bottomNavigationBar: ButtomMenu(),
      body: SafeArea(
          child: ListView.builder(
              controller: controller,
              itemCount: equipmentList.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  child: Card(
                    color: equipmentList[index].materialColor,
                    semanticContainer: true,
                    margin: EdgeInsets.fromLTRB(21, 16, 21, 8),
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      children: [
                        Hero(
                          tag: 'image' + equipmentList[index].title,
                          child: Image.network(
                            equipmentList[index].image,
                            fit: BoxFit.cover,
                            height: 200,
                            width: double.infinity,
                          ),
                        ),
                        Hero(
                            tag: 'text' + equipmentList[index].title,
                            child: Container(
                              margin: EdgeInsets.fromLTRB(10, 15, 10, 4),
                              color: Colors.transparent,
                              child: Text(
                                '${equipmentList[index].title}',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.grey[800],
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )),
                        Hero(
                            tag: 'subtitle' + equipmentList[index].title,
                            child: Container(
                                margin: EdgeInsets.all(7),
                                color: Colors.transparent,
                                child: Text(
                                  equipmentList[index].subTitle,
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.grey[800],
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                )))
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(PageRouteBuilder(
                      fullscreenDialog: true,
                      transitionDuration: Duration(milliseconds: 1000),
                      pageBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation) {
                        return equb_ava(
                            heroType: HeroType(
                                title: equipmentList[index].title,
                                subTitle: equipmentList[index].subTitle,
                                fText: equipmentList[index].fText,
                                image: equipmentList[index].image,
                                pageTo: equipmentList[index].pageTo,
                                materialColor:
                                    equipmentList[index].materialColor));
                      },
                      transitionsBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation,
                          Widget child) {
                        return FadeTransition(
                            opacity:
                                animation, // CurvedAnimation(parent: animation, curve: Curves.elasticInOut),
                            child: child);
                      },
                    ));
                  },
                );
              })),
    );
  }
}
