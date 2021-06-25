import 'AboutUSData.dart';
import 'package:flutter/material.dart';

class AboutTeam extends StatefulWidget {
  AboutTeam({Key key}) : super(key: key);

  @override
  _AboutTeamState createState() => _AboutTeamState();
}

class _AboutTeamState extends State<AboutTeam> {
  double _screenWidth;
  double _screenH;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
    if (_screenH / _screenWidth > 2) {
      _screenH = _screenH * 0.83;
    }
  }

  List<testdetailData> teamInfo = [];
  @override
  void initState() {
    super.initState();
    teamInfo = testdetailData().detailL();
  }

  @override
  Widget build(BuildContext context) {
    final ScrollController controller = ScrollController();
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        title: Text("About the team"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(21, 16, 21, 8),
        child: ListView.builder(
            controller: controller,
            itemCount: teamInfo.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.fromLTRB(10, 16, 10, 8),
                decoration: BoxDecoration(
                    border: Border.all(width: 5, color: Colors.grey),
                    color: Colors.grey[100]),
                child: Column(
                  children: [
                    Text(
                      teamInfo[index].name + ": " + teamInfo[index].jTitle,
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                    Container(
                      height: 130,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: NetworkImage(
                                  "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/zl.jpg?raw=true"))),
                    ),
                    Container(
                      width: _screenWidth / 1.1,
                      child: Text(
                        "Program: " + teamInfo[index].program,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        width: _screenWidth / 1.1,
                        child: Text("Email: " + teamInfo[index].eamil,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold))),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        width: _screenWidth / 1.1,
                        child: Text(
                            "Contribution:\n" + teamInfo[index].contribution,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold))),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        width: _screenWidth / 1.1,
                        child: Text("Fun Fact:\n" + teamInfo[index].about,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)))
                  ],
                ),
              );
            }),
      ),
    );
  }
}
