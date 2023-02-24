import 'package:flutter/material.dart';

class MgrinderBackg extends StatefulWidget {
  MgrinderBackg({Key? key}) : super(key: key);

  @override
  _MgrinderBackgState createState() => _MgrinderBackgState();
}

class _MgrinderBackgState extends State<MgrinderBackg> {
  double _screenWidth = 0;
  double _screenH = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  List<samples> grindSample = [];
  final ScrollController controller = ScrollController();
  @override
  void initState() {
    super.initState();

    grindSample = grindsampledata;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Sample demonstration"),
        ),
        body: Column(
          children: [
            Text(
              "The Picture of grinded sample",
              style: TextStyle(
                  fontSize: _screenH / 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.fromLTRB(
                  _screenWidth / 30, 0, _screenWidth / 30, 0),
              child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 4,
                    );
                  },
                  controller: controller,
                  itemCount: grindSample.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        Text(grindSample[index].lev.toString()),
                        SizedBox(
                          width: _screenWidth / 30,
                        ),
                        Container(
                            constraints: BoxConstraints.expand(
                                width: _screenWidth / 2.74,
                                height: _screenH / 5.2),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      grindSample[index].sampleImg),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10),
                            )),
                        SizedBox(
                          width: _screenWidth / 30,
                        ),
                        Container(
                            constraints: BoxConstraints.expand(
                                width: _screenWidth / 2.74,
                                height: _screenH / 5.2),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      NetworkImage(grindSample[index].microImg),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ],
                    );
                  }),
            )),
          ],
        ));
  }
}

class samples {
  String microImg;
  String sampleImg;
  String lev;

  samples({required this.lev, required this.sampleImg, required this.microImg});
}

List<samples> grindsampledata = [
  (samples(
      lev: "A: 80  ",
      sampleImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/grinmder/80sample.jpg?raw=true",
      microImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/grinmder/80micro.tif.jpg?raw=true")),
  (samples(
      lev: "B:180 ",
      sampleImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/grinmder/180sample.jpg?raw=true",
      microImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/grinmder/180micro.jpg?raw=true")),
  (samples(
      lev: "C:240",
      sampleImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/grinmder/240sample.jpg?raw=true",
      microImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/grinmder/240micro.jpg?raw=true")),
  (samples(
      lev: "D:320",
      sampleImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/grinmder/320sample.jpg?raw=true",
      microImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/grinmder/320micro.jpg?raw=true")),
  (samples(
      lev: "E:400",
      sampleImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/grinmder/400sample.jpg?raw=true",
      microImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/grinmder/400micro.jpg?raw=true")),
  (samples(
      lev: "F:600",
      sampleImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/grinmder/600sample.jpg?raw=true",
      microImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/grinmder/600micro.jpg?raw=true")),
  (samples(
      lev: "G:800",
      sampleImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/grinmder/800sample.jpg?raw=true",
      microImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/grinmder/800micro.jpg?raw=true")),
  (samples(
      lev: "H1200",
      sampleImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/grinmder/1200sample.jpg?raw=true",
      microImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/grinmder/1200micro.jpg?raw=true")),
];
