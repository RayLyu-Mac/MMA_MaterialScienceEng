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
import 'package:mma_mse/floationPanel/PanelMain.dart';
import 'Drawer.dart';
import 'welcome.dart';
import 'package:clay_containers/clay_containers.dart';

DateTime now = new DateTime.now();
DateTime date = new DateTime(now.year, now.month, now.day);

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  // Constants for styling
  static const double kPadding = 20.0;
  static const double kButtonHeight = 0.14;
  static const double kSearchBarHeight = 0.065;
  static const double kBorderRadius = 25.0;
  static const double kDepth = 15.0;
  static const double kIntensity = 0.8;
  static const Color kBaseColor = Color(0xFFE0E5EC);

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
      datatype.add(Colors.lightBlue.shade100);
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
      datatype.add(Colors.red.shade100);
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
      Colors.lightBlue.shade100.withOpacity(1),
      layout_overview()
    ],
    [
      " Find an Equipment        ",
      "assest/lot/equip.json",
      Colors.red.shade100.withOpacity(1),
      EquipmentMain()
    ],
    [
      "    Find a Tool",
      "assest/lot/tool.json",
      Colors.green.shade100.withOpacity(1),
      toolMain()
    ],
    [
      " Safety Instruction   ",
      "assest/lot/safety.json",
      Colors.yellow.shade100.withOpacity(1),
      SafetyMain()
    ],
    // [
    //   "    QR Scanner",
    //   "assest/lot/qr.json",
    //   MaterialStateProperty.all(Colors.purple.shade100),
    //   workingInProg()
    // ]
  ];

  Widget _buildSearchBar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kPadding),
      margin: EdgeInsets.symmetric(vertical: _screenH * 0.02),
      height: _screenH * (kSearchBarHeight),
      child: LayoutBuilder(
        builder: (context, constraints) {
          double fontSize = (constraints.maxWidth * 0.04).clamp(14.0, 18.0);

          return ClayContainer(
            depth: kDepth.toInt(),
            spread: kIntensity,
            color: Colors.white,
            emboss: false,
            child: TextField(
              controller: _controller,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 16,
                ),
                hintText: "Search Equipment/Test/Tools",
                hintStyle: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: fontSize,
                ),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 12, right: 8),
                  child: Icon(
                    Icons.search,
                    color: Colors.grey.shade800,
                    size: fontSize * 1.5,
                  ),
                ),
                suffixIcon: _controller.text.isNotEmpty
                    ? Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: IconButton(
                          icon: Icon(
                            Icons.clear,
                            size: fontSize * 1.2,
                            color: Colors.grey.shade800,
                          ),
                          onPressed: () {
                            _controller.clear();
                            searchOperation("");
                          },
                        ),
                      )
                    : null,
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                filled: true,
                fillColor: Colors.white,
              ),
              onChanged: searchOperation,
            ),
          );
        },
      ),
    );
  }

  Widget _buildSearchResults() {
    return ListView.builder(
      itemCount: possibleResult.length,
      itemBuilder: (context, index) {
        String listData = possibleResult[index];
        return Card(
          elevation: 2,
          child: ListTile(
            leading: Icon(
              property[index][1],
              color: property[index][2],
              size: _screenH * 0.03,
            ),
            title: Text(
              listData,
              style: TextStyle(
                fontSize: (_screenH * 0.018).clamp(14.0, 18.0),
                fontWeight: FontWeight.w500,
              ),
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: kPadding,
              vertical: 8,
            ),
            onTap: () => Navigator.push(
              context,
              PageTransition(
                child: property[index][0],
                type: PageTransitionType.rightToLeft,
                duration: Duration(milliseconds: 300),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildDashboardButton(List buttonData) {
    return Container(
      height: _screenH * kButtonHeight,
      margin: EdgeInsets.symmetric(
        horizontal: kPadding,
        vertical: _screenH * 0.012,
      ),
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          PageTransition(
            duration: Duration(milliseconds: 200),
            child: buttonData[3],
            type: PageTransitionType.rightToLeft,
          ),
        ),
        child: ClayContainer(
          depth: kDepth.toInt(),
          spread: kIntensity,
          color: buttonData[2],
          borderRadius: kBorderRadius,
          parentColor: kBaseColor,
          curveType: CurveType.convex,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(12),
                  child: Lottie.asset(
                    buttonData[1],
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  buttonData[0],
                  style: TextStyle(
                    fontSize: (_screenH * 0.028).clamp(18.0, 26.0),
                    fontWeight: FontWeight.w700,
                    color: Colors.black87,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBaseColor,
      bottomNavigationBar: BottomMenu(),
      appBar: AppBar(
        title: Text(
          "MSE Dashboard",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: (_screenH * 0.025).clamp(18.0, 24.0),
          ),
        ),
        elevation: 2,
      ),
      drawer: StandardNavigationDrawer(headerTitle: "Dashboard"),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.lightBlue.shade100.withOpacity(0.45),
              Colors.red.shade100.withOpacity(0.45),
              Colors.green.shade100.withOpacity(0.45),
              Colors.yellow.shade100.withOpacity(0.45),
            ],
            stops: [0.3, 0.6, 0.9, 1.0],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              _buildSearchBar(),
              Expanded(
                child: possibleResult.isNotEmpty
                    ? _buildSearchResults()
                    : ListView.builder(
                        padding: EdgeInsets.symmetric(vertical: kPadding),
                        itemCount: dashButton.length,
                        itemBuilder: (context, index) =>
                            _buildDashboardButton(dashButton[index]),
                      ),
              ),
            ],
          ),
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
