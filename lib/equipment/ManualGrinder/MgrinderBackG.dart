import 'package:flutter/material.dart';

class MgrinderBackg extends StatefulWidget {
  MgrinderBackg({Key key}) : super(key: key);

  @override
  _MgrinderBackgState createState() => _MgrinderBackgState();
}

class _MgrinderBackgState extends State<MgrinderBackg> {
  double _screenWidth;
  double _screenH;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  List grindSample = List<samples>();
  final ScrollController controller = ScrollController();
  @override
  void initState() {
    super.initState();

    grindSample = samples().grindsampledata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sample demonstration"),
        ),
        body: Column(
          children: [
            Text("The Picture of grinded sample"),
            Text(
                "Sample Img               SiC Grit Paper                    MicroImg (under400X) "),
            Expanded(
                child: Container(
              padding: EdgeInsets.fromLTRB(
                  _screenWidth / 30, 0, _screenWidth / 30, 0),
              child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 2,
                    );
                  },
                  controller: controller,
                  itemCount: grindSample.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        Container(
                            constraints: BoxConstraints.expand(
                                width: _screenWidth / 2.5,
                                height: _screenH / 4.5),
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
                        Text(grindSample[index].lev.toString()),
                        SizedBox(
                          width: _screenWidth / 30,
                        ),
                        Container(
                            constraints: BoxConstraints.expand(
                                width: _screenWidth / 2.5,
                                height: _screenH / 4.5),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      NetworkImage(grindSample[index].microImg),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10),
                            ))
                      ],
                    );
                  }),
            ))
          ],
        ));
  }
}

class samples {
  String microImg;
  String sampleImg;
  int lev;

  samples({this.lev, this.sampleImg, this.microImg});
  List<samples> grindsampledata() {
    List data = List<samples>();
    return data
      ..add(samples(
          lev: 80,
          sampleImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/grinmder/80sample.jpg?raw=true",
          microImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/grinmder/80micro.tif.jpg?raw=true"))
      ..add(samples(
          lev: 180,
          sampleImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/grinmder/180sample.jpg?raw=true",
          microImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/grinmder/180micro.jpg?raw=true"))
      ..add(samples(
          lev: 240,
          sampleImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/grinmder/240sample.jpg?raw=true",
          microImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/grinmder/240micro.jpg?raw=true"))
      ..add(samples(
          lev: 320,
          sampleImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/grinmder/320sample.jpg?raw=true",
          microImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/grinmder/320micro.jpg?raw=true"))
      ..add(samples(
          lev: 400,
          sampleImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/grinmder/400sample.jpg?raw=true",
          microImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/grinmder/400micro.jpg?raw=true"))
      ..add(samples(
          lev: 600,
          sampleImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/grinmder/600sample.jpg?raw=true",
          microImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/grinmder/600micro.jpg?raw=true"))
      ..add(samples(
          lev: 800,
          sampleImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/grinmder/800sample.jpg?raw=true",
          microImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/grinmder/800micro.jpg?raw=true"))
      ..add(samples(
          lev: 1200,
          sampleImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/grinmder/1200sample.jpg?raw=true",
          microImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/grinmder/1200micro.jpg?raw=true"));
  }
}
