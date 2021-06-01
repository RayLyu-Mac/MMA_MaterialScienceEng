import 'dart:collection';
import 'package:mma_mse/Search/tools/tooData.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'equpment/equb_ava_data.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:mma_mse/Search/Test/Test_Page/test_data.dart';

class EqupSearch extends StatefulWidget {
  EqupSearch({Key key}) : super(key: key);

  @override
  _EqupSearchState createState() => _EqupSearchState();
}

class _EqupSearchState extends State<EqupSearch> {
  final TextEditingController _controller = new TextEditingController();
  bool _isSearching;
  String _searchText = "";
  List<List> property = [];
  List _list = [];
  List possibleResult = [];
  Map<String, Widget> equipment = {};
  Map<String, Widget> mseTest = {};
  Map<String, Widget> tools = {};
  Map<String, List<dynamic>> wholeSample = HashMap();

  Icon icon = new Icon(
    Icons.search,
    color: Colors.white,
  );
  List tests = [];
  final ScrollController controller = ScrollController();

  _EqupSearchState() {
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
    equipment = createList();
    mseTest = createTestList();
    tools = createToolList();
    for (var equpN = 0; equpN < equipment.length; equpN++) {
      List<dynamic> datatype = [];
      datatype.clear();
      datatype.add(equipment.values.toList()[equpN]);
      datatype.add(Icons.science_rounded);
      datatype.add(Colors.lightGreenAccent);
      wholeSample.addAll({equipment.keys.toList()[equpN]: datatype});
    }

    for (var mtest = 0; mtest < mseTest.length; mtest++) {
      List<dynamic> datatype = [];
      datatype.clear();
      datatype.add(mseTest.values.toList()[mtest]);
      datatype.add(FontAwesomeIcons.fileContract);
      datatype.add(Colors.lightBlueAccent[100]);
      wholeSample.addAll({mseTest.keys.toList()[mtest]: datatype});
    }

    for (var mtool = 0; mtool < tools.length; mtool++) {
      List<dynamic> datatype = [];
      datatype.clear();
      datatype.add(tools.values.toList()[mtool]);
      datatype.add(FontAwesomeIcons.tools);
      datatype.add(Colors.pinkAccent[100]);
      wholeSample.addAll({tools.keys.toList()[mtool]: datatype});
    }
    _list.addAll(wholeSample.keys.toList());
  }

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
        appBar: buildAppBar(context),
        body: Column(children: [
          SizedBox(
            height: _screenH / 60,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: _screenWidth / 70,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(8, 8, 5, 2),
                height: 55,
                width: _screenWidth / 1.08,
                child: TextField(
                  autocorrect: true,
                  expands: true,
                  maxLines: null,
                  controller: _controller,
                  style: TextStyle(
                    fontSize: _screenH / 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  decoration: new InputDecoration(
                    hintText: "Search For Equpment/Test/Tools...",
                    hintStyle:
                        TextStyle(color: Colors.grey, fontSize: _screenH / 40),
                    contentPadding: EdgeInsets.fromLTRB(10, 1, 1, 1),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2.5, color: Colors.black)),
                  ),
                  onChanged: searchOperation,
                ),
              ),
              SizedBox(
                width: 15,
              ),
            ],
          ),
          possibleResult.length != 0
              ? Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: possibleResult.length,
                      itemBuilder: (BuildContext context, int index) {
                        String listData = possibleResult[index];
                        return new Padding(
                            padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
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
                                              alignment: Alignment.topCenter));
                                    })));
                      }))
              : Container(
                  constraints: BoxConstraints.expand(
                      width: _screenWidth / 1.5, height: _screenH / 1.5),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/SearchB.png?raw=true"))),
                )
        ]));
  }

  Widget buildAppBar(BuildContext context) {
    return new AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 60,
      centerTitle: true,
      title: Column(
        children: [
          Text("Quick Search"),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  void searchOperation(String searchText) {
    possibleResult.clear();
    property.clear();
    if (_isSearching != null) {
      for (int j = 0; j < _list.length; j++) {
        String data = _list[j];
        if (data.toLowerCase().contains(searchText.toLowerCase())) {
          possibleResult.add(data);
          property.add(wholeSample[data]);
        }
      }
    }
  }
}
