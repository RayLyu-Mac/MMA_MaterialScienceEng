import 'package:flutter/material.dart';
import 'Search/safty/saftyMain.dart';
import 'Search/equpment/equb_ava_main.dart';
import 'Search/tools/toolsMain.dart';
import 'layout_overview.dart';
import 'package:page_transition/page_transition.dart';
import 'package:lottie/lottie.dart';
import 'dart:collection';
import 'package:mma_mse/Search/tools/tooData.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mma_mse/Search/Test/Test_Page/test_data.dart';
import 'package:mma_mse/Search/safty/saftyData.dart';
import 'package:mma_mse/Search/equpment/equb_ava_data.dart';
import 'workingInPro.dart';

DateTime now = new DateTime.now();
DateTime date = new DateTime(now.year, now.month, now.day);

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final TextEditingController _controller = new TextEditingController();
  bool _isSearching = false;
  String _searchText = "";
  List<List> property = [];
  List _list = [];
  List possibleResult = [];
  Map<String, Widget> equipment = {};
  Map<String, Widget> mseTest = {};
  Map<String, Widget> tools = {};
  Map<String, Widget> safty = {};
  Map<String, List<dynamic>> wholeSample = HashMap();
  Icon icon = new Icon(
    Icons.search,
    color: Colors.white,
  );
  List tests = [];
  final ScrollController controller = ScrollController();

  _DashBoardState() {
    _controller.addListener(() {
      if (_controller.text.isEmpty) {
        setState(() {
          _isSearching = false;
          _searchText = "";
        });
      } else {
        setState(() {
          _isSearching = true;
          _searchText = _controller.text;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _isSearching = false;
    safty = createSaftyList();

    for (var mequb = 0; mequb < equipmentList.length; mequb++) {
      List<dynamic> datatype = [];
      datatype.clear();
      datatype.add(equipmentList[mequb].pageTo);
      datatype.add(FontAwesomeIcons.microscope);
      datatype.add(Colors.purple.shade100);
      wholeSample.addAll({equipmentList[mequb].title: datatype});
    }

    for (var mtest = 0; mtest < test_data_list.length; mtest++) {
      List<dynamic> datatype = [];
      datatype.clear();
      datatype.add(test_data_list[mtest].pageTo);
      datatype.add(FontAwesomeIcons.fileContract);
      datatype.add(Colors.lightBlueAccent.shade100);
      wholeSample.addAll({test_data_list[mtest].title: datatype});
    }

    for (var mtool = 0; mtool < createToolList.length; mtool++) {
      List<dynamic> datatype = [];
      datatype.clear();
      datatype.add(createToolList[mtool].pageTo);
      datatype.add(FontAwesomeIcons.tools);
      datatype.add(Colors.green.shade200);
      wholeSample.addAll({createToolList[mtool].name: datatype});
    }

    for (var sft = 0; sft < safty.length; sft++) {
      List<dynamic> datatype = [];
      datatype.clear();
      datatype.add(safty.values.toList()[sft]);
      datatype.add(FontAwesomeIcons.skull);
      datatype.add(Colors.redAccent.shade100);
      wholeSample.addAll({safty.keys.toList()[sft]: datatype});
    }
    _list.addAll(wholeSample.keys.toList());
  }

  double _screenWidth = 0;
  double _screenH = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  List<List> dashButton = [
    [
      "   Find a Room",
      "assest/lot/map.json",
      MaterialStateProperty.all(Colors.lightBlue.shade100),
      layout_overview()
    ],
    [
      " Find an Equipment        ",
      "assest/lot/equip.json",
      MaterialStateProperty.all(Colors.red.shade100),
      equb_main()
    ],
    [
      "    Find a Tool",
      "assest/lot/tool.json",
      MaterialStateProperty.all(Colors.green.shade100),
      toolMain()
    ],
    [
      " Safety Instruction   ",
      "assest/lot/safety.json",
      MaterialStateProperty.all(Colors.yellow.shade100),
      saftyMain()
    ],
    [
      "    QR Scanner",
      "assest/lot/qr.json",
      MaterialStateProperty.all(Colors.purple.shade100),
      workingInProg()
    ]
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text("MSE Dash Board")),
      body: SafeArea(
        child: Center(
          child: Column(children: [
            // Padding(
            //     child: Align(
            //       alignment: Alignment.centerLeft,
            //       heightFactor: height * 0.002,
            //       child: Text(
            //         "Quick Search",
            //         textAlign: TextAlign.start,
            //         style: TextStyle(
            //             fontWeight: FontWeight.bold,
            //             decoration: TextDecoration.underline,
            //             fontSize: height * 0.03,
            //             color: Colors.grey.shade700),
            //       ),
            //     ),
            //     padding: EdgeInsets.only(left: width * 0.08)),
            Container(
              padding: EdgeInsets.only(left: width * 0.01),
              margin: EdgeInsets.only(top: height * 0.03),
              height: height * 0.07,
              width: width * 0.86,
              child: TextField(
                autocorrect: true,
                expands: true,
                maxLines: null,
                controller: _controller,
                style: TextStyle(
                  fontSize: height / 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                decoration: new InputDecoration(
                  hintText: "Search For Equipment/Test/Tools...",
                  hintStyle:
                      TextStyle(color: Colors.grey, fontSize: _screenH / 40),
                  contentPadding: EdgeInsets.fromLTRB(10, 1, 1, 1),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2.5, color: Colors.black)),
                ),
                onChanged: searchOperation,
              ),
            ),
            possibleResult.length != 0
                ? Expanded(
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: possibleResult.length,
                        itemBuilder: (BuildContext context, int index) {
                          String listData = possibleResult[index];
                          return Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.06,
                                  vertical: height * 0.004),
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                          color: Colors.grey, width: 4)),
                                  child: InkWell(
                                      child: ListTile(
                                        trailing: Icon(property[index][1]),
                                        tileColor: property[index][2],
                                        title: new Text(listData.toString()),
                                      ),
                                      splashColor: Colors.grey,
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                child: property[index][0],
                                                type: PageTransitionType.scale,
                                                duration:
                                                    Duration(milliseconds: 600),
                                                alignment:
                                                    Alignment.topCenter));
                                      })));
                        }))
                : SingleChildScrollView(
                    child: Column(children: [
                      // Padding(
                      //     child: Align(
                      //       alignment: Alignment.centerLeft,
                      //       heightFactor: height * 0.0015,
                      //       child: Text(
                      //         "Quick Access",
                      //         textAlign: TextAlign.start,
                      //         style: TextStyle(
                      //             fontWeight: FontWeight.bold,
                      //             decoration: TextDecoration.underline,
                      //             fontSize: height * 0.03,
                      //             color: Colors.grey.shade700),
                      //       ),
                      //     ),
                      //     padding: EdgeInsets.only(left: width * 0.08)),
                      for (var i = 0; i < dashButton.length; i++)
                        Container(
                            height: height * 0.12,
                            width: width * 0.84,
                            margin: EdgeInsets.all(10),
                            child: ElevatedButton.icon(
                                style: ButtonStyle(
                                    backgroundColor: dashButton[i][2]),
                                icon: Container(
                                  height: height * 0.1,
                                  width: width * 0.25,
                                  child: Lottie.asset(dashButton[i][1],
                                      fit: BoxFit.fitHeight),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          duration:
                                              const Duration(milliseconds: 500),
                                          child: dashButton[i][3],
                                          type:
                                              PageTransitionType.rightToLeft));
                                },
                                label: Text(
                                  dashButton[i][0],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: height * 0.025),
                                )))
                    ]),
                  )
          ]),
        ),
      ),
    );
  }

  void searchOperation(String searchText) {
    possibleResult.clear();
    property.clear();
    if (_isSearching) {
      for (int j = 0; j < _list.length; j++) {
        String data = _list[j];
        if (data.toLowerCase().contains(searchText.toLowerCase())) {
          possibleResult.add(data);
          property.add(wholeSample[data]!);
        }
      }
    }
  }
}
