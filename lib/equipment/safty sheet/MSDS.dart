import 'package:flutter/material.dart';
import 'MSDSdata.dart';
import 'package:mma_mse/customTile.dart';

class SearchListExample extends StatefulWidget {
  @override
  _SearchListExampleState createState() => new _SearchListExampleState();
}

class _SearchListExampleState extends State<SearchListExample> {
  Widget appBarTitle = new Text(
    "Search Example",
    style: new TextStyle(color: Colors.white),
  );
  Icon icon = new Icon(
    Icons.search,
    color: Colors.white,
  );
  final globalKey = new GlobalKey<ScaffoldState>();
  final TextEditingController _controller = new TextEditingController();
  List _list = List();
  bool _isSearching;
  bool searchChem = false;
  bool searchLoc = false;
  bool searchName = false;
  String _searchText = "";
  List total = new List();
  List name = new List();
  List<msdsData> property = List();
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
    total = msdsData().msDataList();
    for (var i = 0; i < total.length; i++) {
      _list.add(total[i].name);
    }
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
    String dropdownValue = "Name";
    return new Scaffold(
        key: globalKey,
        appBar: buildAppBar(context),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 60,
                  width: 240,
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
                                BorderSide(width: 3.0, color: Colors.black)),
                        hintText: "Search...",
                        hintStyle: new TextStyle(color: Colors.black)),
                    onChanged: searchOperation,
                  ),
                ),
                Container(
                  height: 30,
                  width: 80,
                  child: DropdownButton(
                    isExpanded: true,
                    icon: const Icon(Icons.arrow_downward),
                    iconSize: 25,
                    elevation: 16,
                    value: dropdownValue,
                    style: const TextStyle(color: Colors.deepPurple),
                    onChanged: (value) {
                      setState(() {
                        dropdownValue = value;
                        switch (value) {
                          case "Name":
                            searchName = true;
                            _list.clear();
                            for (var i = 0; i < total.length; i++) {
                              _list.add(total[i].name);
                            }
                            break;
                          case "Location":
                            searchLoc = true;
                            _list.clear();
                            for (var i = 0; i < total.length; i++) {
                              _list.add(total[i].location);
                            }
                            break;
                          case "Chemical Formula":
                            searchChem = true;
                            _list.clear();
                            for (var i = 0; i < total.length; i++) {
                              _list.add(total[i].short);
                            }
                            break;
                        }
                      });
                    },
                    items: <String>["Name", "Location", "Chemical Formula"]
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
              itemCount: name.length,
              itemBuilder: (BuildContext context, int index) {
                String listData = name[index];
                return new Padding(
                    padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey, width: 4)),
                        child: InkWell(
                          splashColor: Colors.grey,
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return SimpleDialog(
                                    backgroundColor:
                                        property[index].level.withOpacity(0.9),
                                    contentPadding: EdgeInsets.fromLTRB(
                                        _screenWidth / 30,
                                        _screenH / 30,
                                        _screenWidth / 50,
                                        _screenH / 25),
                                    title: Text(property[index].name),
                                    children: [
                                      Text("The Location of the material: " +
                                          property[index].location),
                                      Text(
                                          "The Chemical Formula the material: " +
                                              property[index].short),
                                      Text("The type of the material: " +
                                          property[index].type),
                                      Text("The level of harzard is: " +
                                          saftyLevel[property[index].level])
                                    ],
                                  );
                                });
                          },
                          child: ListTile(
                            title: new Text(listData.toString()),
                            tileColor: property[index].level,
                          ),
                        )));
              },
            ))
          ],
        ));
  }

  Widget buildAppBar(BuildContext context) {
    return new AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 60,
        centerTitle: true,
        title: Column(
          children: [
            Text("MSDS Data Sheet"),
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
    name.clear();
    property.clear();
    if (_isSearching != null) {
      for (int j = 0; j < _list.length; j++) {
        String data = _list[j];
        if (data.toLowerCase().contains(searchText.toLowerCase())) {
          name.add(data);
          property.add(total[j]);
        }
      }
    }
  }
}
