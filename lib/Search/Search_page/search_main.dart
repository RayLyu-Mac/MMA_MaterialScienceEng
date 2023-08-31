import 'package:flutter/material.dart';
import 'search_page1.dart';
import 'search_page2.dart';

class search_main extends StatefulWidget {
  search_main({Key key}) : super(key: key);

  @override
  _search_mainState createState() => _search_mainState();
}

class _search_mainState extends State<search_main> {
  final PageController controller = PageController(initialPage: 0);
  double _screenWidth = 0;
  double _screenH = 0;
  // (page1(),page2(),page3(),page4()) //
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        scrollDirection: Axis.vertical,
        children: [search_area(), search_p2()],
      ),
    );
  }
}
