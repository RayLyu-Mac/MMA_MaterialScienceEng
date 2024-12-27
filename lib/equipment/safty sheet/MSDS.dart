import 'package:flutter/material.dart';
import 'MSDSdata.dart';

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
  List _list = [];
  bool _isSearching = false;
  bool searchChem = false;
  bool searchLoc = false;
  bool searchName = false;
  String _searchText = "";
  List total = [];
  List name = [];
  List<msdsData> property = [];
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
    total = msDataList;
    for (var i = 0; i < total.length; i++) {
      _list.add(total[i].name);
    }
  }

  double _screenWidth = 0;
  double _screenH = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: globalKey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black87),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'MSDS Database',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      controller: _controller,
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        hintText: 'Search MSDS...',
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      ),
                      onChanged: searchOperation,
                    ),
                  ),
                ),
                SizedBox(width: 12),
                PopupMenuButton<String>(
                  icon: Icon(Icons.filter_list),
                  onSelected: (value) {
                    setState(() {
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
                  itemBuilder: (context) =>
                      ["Name", "Location", "Chemical Formula"]
                          .map((String value) => PopupMenuItem<String>(
                                value: value,
                                child: Text(value),
                              ))
                          .toList(),
                ),
              ],
            ),
          ),
          Expanded(
            child: name.isNotEmpty
                ? ListView.builder(
                    padding: EdgeInsets.all(8),
                    itemCount: name.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 2,
                        margin: EdgeInsets.symmetric(vertical: 4),
                        child: ListTile(
                          contentPadding: EdgeInsets.all(16),
                          title: Text(
                            name[index],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(property[index].short),
                          tileColor: property[index].level.withOpacity(0.1),
                          trailing: Icon(Icons.arrow_forward_ios, size: 16),
                          onTap: () => _showDetailsDialog(context, index),
                        ),
                      );
                    },
                  )
                : Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/searchChem.png?raw=true",
                          height: _screenH / 3,
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Search for MSDS data',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  void _showDetailsDialog(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          backgroundColor: property[index].level.withOpacity(0.9),
          title: Text(
            property[index].name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _detailRow(
                  Icons.location_on, "Location", property[index].location),
              _detailRow(
                  Icons.science, "Chemical Formula", property[index].short),
              _detailRow(Icons.category, "Type", property[index].type),
              _detailRow(Icons.warning, "Hazard Level",
                  saftyLevel[property[index].level]!),
            ],
          ),
          actions: [
            TextButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  Widget _detailRow(IconData icon, String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, size: 20),
          SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  value,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void searchOperation(String searchText) {
    name.clear();
    property.clear();
    for (int j = 0; j < _list.length; j++) {
      String data = _list[j];
      if (data.toLowerCase().contains(searchText.toLowerCase())) {
        name.add(data);
        property.add(total[j]);
      }
    }
  }
}
