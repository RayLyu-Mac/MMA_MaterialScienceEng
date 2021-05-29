import 'equb_ava_data.dart';
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
  List<Widget> property = [];
  List _list = [];
  List possibleResult = [];
  Map<String, Widget> equipment = {};
  Map<String, Widget> mseTest = {};
  Icon icon = new Icon(
    Icons.search,
    color: Colors.white,
  );
  List tests = [];
  final ScrollController controller = ScrollController();

  _SearchListExampleState() {
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
  }

  double _screenWidth;
  double _screenH;
  String dropDown;

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
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(5, 15, 5, 10),
                height: 80,
                width: 245,
                child: TextField(
                  expands: true,
                  maxLines: null,
                  controller: _controller,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: new InputDecoration(
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
              Container(
                height: 40,
                width: 95,
                child: DropdownButton(
                  isExpanded: true,
                  icon: const Icon(
                    Icons.arrow_downward,
                    color: Colors.grey,
                  ),
                  iconSize: 20,
                  elevation: 16,
                  hint: Text("Types"),
                  value: dropDown,
                  style: const TextStyle(color: Colors.deepPurple),
                  onChanged: (value) {
                    setState(() {
                      dropDown = value;
                      switch (value) {
                        case "Equipment":
                          _list.clear();
                          _list.addAll(equipment.keys.toList());
                          break;
                        case "Test":
                          _list.clear();
                          _list.addAll(mseTest.keys.toList());
                          break;
                      }
                    });
                  },
                  items: <String>["Equipment", "Test"]
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              )
            ],
          ),
          Expanded(
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
                                border:
                                    Border.all(color: Colors.grey, width: 4)),
                            child: InkWell(
                                child: ListTile(
                                  title: new Text(listData.toString()),
                                ),
                                splashColor: Colors.grey,
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          child: property[index],
                                          type: PageTransitionType.scale,
                                          alignment: Alignment.topCenter));
                                })));
                  }))
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
        actions: <Widget>[
          IconButton(
            icon: icon,
            onPressed: () {
              setState(() {
                if (this.icon.icon == Icons.search) {
                  this.icon = new Icon(
                    Icons.close,
                    color: Colors.white,
                  );

                  _handleSearchStart();
                } else {
                  _handleSearchEnd();
                }
              });
            },
          ),
        ]);
  }

  void _handleSearchStart() {
    setState(() {
      _isSearching = true;
    });
  }

  void _handleSearchEnd() {
    setState(() {
      this.icon = new Icon(
        Icons.search,
        color: Colors.white,
      );
      _isSearching = false;
      _controller.clear();
    });
  }

  void searchOperation(String searchText) {
    possibleResult.clear();
    property.clear();
    if (_isSearching != null) {
      for (int j = 0; j < _list.length; j++) {
        String data = _list[j];
        if (data.toLowerCase().contains(searchText.toLowerCase())) {
          possibleResult.add(data);
          property.add(equipment[data]);
        }
      }
    }
  }
}
