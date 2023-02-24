import 'package:flutter/material.dart';
import 'package:mma_mse/Search/Test/TestsDetailes/hardnessTest/hardnessTBGData.dart';
import 'package:mma_mse/Search/Test/testDetailMode.dart';
import 'metanaData.dart';
import 'package:flutter/services.dart';
import 'package:mma_mse/customTile.dart';
import 'package:mma_mse/Search/Test/TestsDetailes/TestDetailFormat.dart';

class metAnalysis extends StatefulWidget {
  metAnalysis({Key? key}) : super(key: key);
  List<Widget> pages = [];

  @override
  _metAnalysisState createState() => _metAnalysisState();
}

class _metAnalysisState extends State<metAnalysis> {
  double _screenWidth = 0;
  double _screenH = 0;
  List<testdetailData> testBGdetail = hardnessData;
  List<Widget> pages = [];
  List listtile = [];
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
      listtile.add(testBGdetail[j].title);
      pages.add(pageMode(
        title: testBGdetail[j].title,
        content: testBGdetail[j].content,
        back_img: testBGdetail[j].backImg,
        addOnImg: testBGdetail[j].addOnImg!,
        pageTo: testBGdetail[j].pageTo!,
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
    Drawer meturAna() => Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Text("Process For Meturllgical Analysis")),
              for (var k = 0; k < listtile.length; k++)
                customListTile(
                    name: listtile[k],
                    pageTo: k,
                    fonts: 13,
                    controller: controller)
            ],
          ),
        );
    return Scaffold(
        drawer: meturAna(),
        body: PageView(
          controller: controller,
          children: pages,
        ));
  }
}
