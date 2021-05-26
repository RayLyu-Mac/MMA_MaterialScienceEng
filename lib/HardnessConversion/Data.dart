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

  String dropdownValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
                  icon: const Icon(Icons.arrow_downward_sharp),
                  iconSize: 30,
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
                        case "RockWell C":
                          dropdownValue = value;
                          loadAsset("Rockwell/RockWellC.csv");
                          break;
                      }
                    });
                  },
                  items: <String>["RockWell C", "Vickers 136"]
                      .map<DropdownMenuItem<String>>((String value) {
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
                      const FixedColumnWidth(100.0), FractionColumnWidth(0.38)),
                  1: MaxColumnWidth(
                      const FixedColumnWidth(100.0), FractionColumnWidth(0.62))
                },
                border: TableBorder.all(width: 1.0),
                children: data.map((item) {
                  return TableRow(
                      children: item.map((row) {
                    return Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          row.toString(),
                          style: TextStyle(fontSize: 20.0),
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
