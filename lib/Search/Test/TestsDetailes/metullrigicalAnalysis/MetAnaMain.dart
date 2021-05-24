import 'package:flutter/material.dart';
import 'package:mma_mse/Search/Test/testDetailMode.dart';
import 'metanaData.dart';
import 'package:flutter/services.dart';

class metAnalysis extends StatefulWidget {
  metAnalysis({Key key}) : super(key: key);
  List<Widget> pages = [];

  @override
  _metAnalysisState createState() => _metAnalysisState();
}

class _metAnalysisState extends State<metAnalysis> {
  double _screenWidth;
  double _screenH;
  List<testdetailData> testBGdetail = testdetailData().detailL();
  List<Widget> pages = [];
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  void initState() {
    super.initState();

    for (var j = 0; j < testBGdetail.length; j++) {
      pages.add(pageMode(
        title: testBGdetail[j].title,
        content: testBGdetail[j].content,
        back_img: testBGdetail[j].backImg,
        addOnImg: testBGdetail[j].addOnImg,
        pageTo: testBGdetail[j].pageTo,
      ));
    }
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return Scaffold(
        body: PageView(
      controller: controller,
      children: pages,
    ));
  }
}
