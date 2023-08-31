import 'package:flutter/material.dart';
import 'package:csv/csv.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

class hardnessData extends StatefulWidget {
  hardnessData({Key key}) : super(key: key);

  @override
  _hardnessDataState createState() => _hardnessDataState();
}

class _hardnessDataState extends State<hardnessData> {
  List<List<dynamic>> data = [];

  loadAsset(name) async {
    final myData = await rootBundle.loadString("assest/csv/$name");
    List<List<dynamic>> csvTable = CsvToListConverter().convert(myData);

    data = csvTable;
  }

  String dropdownValue = 'RockWell C';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Hardness"),
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 2),
              height: 50,
              child: DropdownButton(
                  isExpanded: true,
                  hint: Text("Types of hardness test"),
                  dropdownColor: Colors.blueGrey[200],
                  icon: const Icon(Icons.arrow_downward_sharp,
                      color: Colors.grey),
                  iconSize: 25,
                  elevation: 16,
                  value: dropdownValue,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                  onChanged: (value) {
                    setState(() {
                      switch (value) {
                        case "Vickers 136":
                          dropdownValue = value;
                          loadAsset("vicker.csv");
                          break;
                        case "RockWell A":
                          dropdownValue = value;
                          loadAsset("Rockwell/A.csv");
                          break;
                        case "RockWell B":
                          dropdownValue = value;
                          loadAsset("Rockwell/RockwellB.csv");
                          break;
                        case "RockWell C":
                          dropdownValue = value;
                          loadAsset("Rockwell/RockWellC.csv");
                          break;
                        case "RockWell D":
                          dropdownValue = value;
                          loadAsset("Rockwell/D.csv");
                          break;
                        case "RockWell Superficial 15-N 15Kg Brale":
                          dropdownValue = value;
                          loadAsset("Rockwell/superficial15.csv");
                          break;
                        case "RockWell Superficial 30-N 30Kg Brale":
                          dropdownValue = value;
                          loadAsset("Rockwell/superf30.csv");
                          break;
                        case "Shore Sciero-scope":
                          dropdownValue = value;
                          loadAsset("shore.csv");
                          break;
                        case "Brinell 3000Kg 10mm Ball Steel":
                          dropdownValue = value;
                          loadAsset("Brinell3000.csv");
                          break;
                        case "Brinell 50Kg 10mm Ball Steel":
                          dropdownValue = value;
                          loadAsset("Brinell50.csv");
                          break;
                      }
                    });
                  },
                  items: <String>[
                    "RockWell A",
                    "RockWell B",
                    "RockWell C",
                    "RockWell D",
                    "RockWell Superficial 15-N 15Kg Brale",
                    "RockWell Superficial 30-N 30Kg Brale",
                    "Shore Sciero-scope",
                    "Vickers 136",
                    "Brinell 50Kg 10mm Ball Steel",
                    "Brinell 3000Kg 10mm Ball Steel"
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList()),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Table(
                columnWidths: {
                  0: MaxColumnWidth(
                      const FixedColumnWidth(100.0), FractionColumnWidth(0.33)),
                  1: MaxColumnWidth(
                      const FixedColumnWidth(100.0), FractionColumnWidth(0.33)),
                  2: MaxColumnWidth(
                      const FixedColumnWidth(100.0), FractionColumnWidth(0.34)),
                },
                border: TableBorder.all(width: 1.0),
                children: data.map((item) {
                  return TableRow(
                      children: item.map((row) {
                    return Container(
                      color: Colors.grey[200],
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(
                          row.toString(),
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    );
                  }).toList());
                }).toList(),
              ),
            ))
          ],
        ));
  }
}
