import 'package:flutter/material.dart';
import 'contactData.dart';
import 'package:mma_mse/SendEmail/sendEmailMain.dart';
import 'package:mma_mse/fancyButton.dart';

class ContactMSE extends StatefulWidget {
  @override
  _ContactMSEState createState() => new _ContactMSEState();
}

class _ContactMSEState extends State<ContactMSE> {
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
  List<testdetailData> property = List();
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
    total = testdetailData().detailL();
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
    return new Scaffold(
        resizeToAvoidBottomInset: false,
        key: globalKey,
        appBar: buildAppBar(context),
        body: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(10, 8, 5, 2),
                  height: 55,
                  width: 245,
                  child: TextField(
                    expands: true,
                    maxLines: null,
                    controller: _controller,
                    style: TextStyle(
                      fontSize: _screenH / 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    decoration: new InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(10, 1, 1, 1),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2.5, color: Colors.black)),
                    ),
                    onChanged: searchOperation,
                  ),
                ),
              ],
            ),
            name.length != 0
                ? Expanded(
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
                                  border:
                                      Border.all(color: Colors.grey, width: 4)),
                              child: InkWell(
                                splashColor: Colors.grey,
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return SimpleDialog(
                                          contentPadding: EdgeInsets.fromLTRB(
                                              _screenWidth / 30,
                                              _screenH / 30,
                                              _screenWidth / 50,
                                              _screenH / 25),
                                          title: Text(
                                            property[index].name,
                                            style: TextStyle(
                                                fontSize: _screenH / 30,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          children: [
                                            Text(
                                              "Title: " +
                                                  property[index].jobTitle,
                                              style: TextStyle(
                                                  fontSize: _screenH / 40,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "Email: " + property[index].eamil,
                                              style: TextStyle(
                                                  fontSize: _screenH / 40,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "extension: " +
                                                  property[index].extention,
                                              style: TextStyle(
                                                  fontSize: _screenH / 40,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "Office: " +
                                                  property[index].officeLoc,
                                              style: TextStyle(
                                                  fontSize: _screenH / 40,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: _screenH / 20,
                                            ),
                                            fancyBut(
                                                pageTo: EmailContent(
                                                  emailTo:
                                                      property[index].eamil,
                                                  prof: property[index].name,
                                                ),
                                                width: _screenWidth / 1.4,
                                                height: _screenH / 15,
                                                icon: Icons.email_rounded,
                                                buttonName: "Send An Email")
                                          ],
                                        );
                                      });
                                },
                                child: ListTile(
                                  title: new Text(listData.toString()),
                                ),
                              )));
                    },
                  ))
                : Container(
                    constraints: BoxConstraints.expand(
                        width: _screenWidth / 1.5, height: _screenH / 1.5),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/searchChem.png?raw=true"))),
                  )
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
            Text("Contact Info"),
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
