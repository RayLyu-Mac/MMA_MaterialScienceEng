import 'test_data.dart';
import 'package:flutter/material.dart';
import 'package:mma_mse/customTileScroll.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class test_ava extends StatefulWidget {
  const test_ava({Key? key}) : super(key: key);

  @override
  _test_avaState createState() => _test_avaState();
}

class _test_avaState extends State<test_ava> {
  double _screenWidth = 0;
  double _screenH = 0;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  List _heroTypeList = test_data_list;
  double _screenWidthAdjustment = 0;
  final ScrollController controller = ScrollController();

  Widget testCase() => Drawer(
        elevation: 0,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
              ),
              child: Column(
                children: [
                  Text(
                    "Case Studies in MSE",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: _screenWidth / 22,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Image.asset(
                    "assest/logocolor.png",
                    width: _screenWidth / 1.8,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
            for (var tc = 0; tc < _heroTypeList.length; tc++)
              ScrollcustomListTile(
                name: _heroTypeList[tc].title,
                pageTo: tc,
                fonts: 13,
                controller: controller,
                offset: 300,
              )
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          "Test Available in MSE",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.5,
          ),
        ),
        actions: [
          IconButton(
            padding: EdgeInsets.symmetric(horizontal: 16),
            icon: Icon(Icons.close, size: 28),
            onPressed: () => Navigator.pop(context),
          )
        ],
      ),
      drawer: testCase(),
      body: SafeArea(
        child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 12),
          itemCount: _heroTypeList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                clipBehavior: Clip.antiAlias,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Hero(
                      tag: 'image${_heroTypeList[index].title}',
                      child: Container(
                        height: 200,
                        width: double.infinity,
                        child: Image.network(
                          _heroTypeList[index].image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Hero(
                            tag: 'text${_heroTypeList[index].title}',
                            child: Text(
                              _heroTypeList[index].title,
                              style: TextStyle(
                                fontSize:
                                    _heroTypeList[index].titleFontSize ?? 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          Hero(
                            tag: 'subtitle${_heroTypeList[index].title}',
                            child: Text(
                              _heroTypeList[index].subTitle,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black54,
                                height: 1.4,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
                    return _heroTypeList[index].pageTo;
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
          },
        ),
      ),
    );
  }
}
