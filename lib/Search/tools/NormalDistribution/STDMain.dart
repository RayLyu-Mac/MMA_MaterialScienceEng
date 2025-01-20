import 'dart:math';

import 'package:flutter/material.dart';
import 'data.dart';

class STDCheck extends StatefulWidget {
  const STDCheck({Key? key}) : super(key: key);

  @override
  _STDCheckState createState() => _STDCheckState();
}

class _STDCheckState extends State<STDCheck> {
  final TextEditingController _pcnController = TextEditingController();
  final TextEditingController _pckController = TextEditingController();
  final TextEditingController _meuController = TextEditingController();
  final TextEditingController _sigmaController = TextEditingController();
  final TextEditingController _xController = TextEditingController();
  final TextEditingController _sampnController = TextEditingController();
  final TextEditingController _sampmeanController = TextEditingController();
  final TextEditingController _zValueController = TextEditingController();

  late double _screenWidth;
  late double _screenH;
  String _output = '';
  double _mz = 0;
  String _pc = '';
  double _ci95 = 0;
  double _ci99 = 0;
  double _ci68 = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _updateScreenDimensions();
  }

  void _updateScreenDimensions() {
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
    if (_screenH / _screenWidth > 2) {
      _screenH *= 0.83;
    }
  }

  Widget _buildCard({
    required String title,
    required List<Widget> children,
  }) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            ...children,
          ],
        ),
      ),
    );
  }

  Widget _buildInputField({
    required TextEditingController controller,
    required String hint,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          border: OutlineInputBorder(),
          filled: true,
          fillColor: Colors.grey[100],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text("Statistical Tools"),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            _buildCard(
              title: "Permutation and Combination",
              children: [
                _buildInputField(
                  controller: _pcnController,
                  hint: "n value (Sample #)",
                ),
                _buildInputField(
                  controller: _pckController,
                  hint: "k value (Picking Value)",
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                      onPressed: _calculatePermutation,
                      icon: Icon(Icons.calculate),
                      label: Text("Permutation"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: _calculateCombination,
                      icon: Icon(Icons.calculate),
                      label: Text("Combination"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ],
                ),
                if (_pc.isNotEmpty)
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text(
                      "Result: $_pc",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
              ],
            ),
            SizedBox(
              height: _screenH / 25,
            ),
            Container(
              width: _screenWidth / 1.1,
              padding: EdgeInsets.fromLTRB(_screenWidth / 12, _screenH / 40,
                  _screenWidth / 12, _screenH / 30),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  border: Border.all(width: 10, color: Colors.grey.shade200),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  SizedBox(
                    height: _screenH / 55,
                  ),
                  Text(
                    "Convert Z value to Standard Normal Distribution",
                    style: TextStyle(
                        fontSize: _screenH / 35, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(_screenWidth / 10,
                        _screenH / 30, _screenWidth / 10, _screenH / 30),
                    width: _screenWidth / 1.1,
                    height: _screenH / 10,
                    child: TextField(
                      controller: _meuController,
                      decoration: InputDecoration(hintText: "meu: Mean"),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(_screenWidth / 10,
                        _screenH / 30, _screenWidth / 10, _screenH / 30),
                    width: _screenWidth / 1.1,
                    height: _screenH / 10,
                    child: TextField(
                      controller: _xController,
                      decoration: InputDecoration(
                          hintText: "X: Value you want to convert to"),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(_screenWidth / 10,
                        _screenH / 30, _screenWidth / 10, _screenH / 30),
                    width: _screenWidth / 1.1,
                    height: _screenH / 10,
                    child: TextField(
                      controller: _sigmaController,
                      decoration: InputDecoration(
                          hintText: "Sigma: Standard Deviation"),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(_screenWidth / 10,
                        _screenH / 30, _screenWidth / 10, _screenH / 30),
                    width: _screenWidth / 1.1,
                    height: _screenH / 10,
                    child: TextField(
                      controller: _sampnController,
                      decoration:
                          InputDecoration(hintText: "Sample Number: optional"),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(_screenWidth / 10,
                        _screenH / 30, _screenWidth / 10, _screenH / 30),
                    width: _screenWidth / 1.1,
                    height: _screenH / 10,
                    child: TextField(
                      controller: _sampmeanController,
                      decoration:
                          InputDecoration(hintText: "Sample Mean: optional"),
                    ),
                  ),
                  ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          double meuv = double.parse(_meuController.text);
                          double sigmav = double.parse(_sigmaController.text);
                          double xv = double.parse(_xController.text);

                          double sn = double.parse(_sampnController.text);
                          double sm = double.parse(_sampmeanController.text);
                          if (sn != null) {
                            _mz = ((sm - xv) / sigmav / sqrt(sn));
                            _ci68 = sigmav * 0.47 / sqrt(sn);
                            _ci95 = sigmav * 1.96 / sqrt(sn);
                            _ci99 = sigmav * 2.33 / sqrt(sn);
                          } else {
                            _mz = ((xv - meuv) / sigmav);
                            _ci68 = sigmav * 0.47;
                            _ci95 = sigmav * 1.96;
                            _ci99 = sigmav * 2.33;
                          }
                        });
                      },
                      icon: Icon(Icons.calculate_sharp),
                      label: Text("Calculate the Z value")),
                  SizedBox(
                    height: _screenH / 35,
                  ),
                  Container(
                    child: Text(
                      "Z Value after modified: " +
                          ((_mz).toStringAsExponential(2)),
                      style: TextStyle(
                          fontSize: _screenH / 45, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: _screenH / 35,
                  ),
                  Container(
                    width: _screenWidth / 1.3,
                    child: Text(
                      "The According Confidence Interval",
                      style: TextStyle(
                          fontSize: _screenH / 35, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: _screenH / 45,
                  ),
                  Column(
                    children: [
                      Container(
                        width: _screenWidth / 1.3,
                        child: Text(
                          "68% Confidence Interval: " +
                              (_ci68).toStringAsExponential(2),
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: _screenH / 55,
                      ),
                      Container(
                        width: _screenWidth / 1.3,
                        child: Text(
                          "95% Confidence Interval: " +
                              (_ci95).toStringAsExponential(2),
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: _screenH / 55,
                      ),
                      Container(
                        width: _screenWidth / 1.3,
                        child: Text(
                          "99% Confidence Interval: " +
                              (_ci99).toStringAsExponential(2),
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: _screenH / 25,
                  ),
                  Image(
                      image: NetworkImage(
                          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/search/tools/norm.png?raw=true")),
                  SizedBox(
                    height: _screenH / 35,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: _screenH / 25,
            ),
            Container(
              width: _screenWidth / 1.1,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                border: Border.all(width: 7, color: Colors.grey.shade200),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: _screenH / 45,
                  ),
                  Text(
                    "Find the probablity density for score Z",
                    style: TextStyle(
                        fontSize: _screenH / 35, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: _screenH / 25,
                  ),
                  Image(
                      image: NetworkImage(
                          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/STD.png?raw=true")),
                  SizedBox(
                    height: _screenH / 25,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(_screenWidth / 10,
                        _screenH / 30, _screenWidth / 10, _screenH / 30),
                    width: _screenWidth / 1.1,
                    height: _screenH / 10,
                    child: TextField(
                      controller: _zValueController,
                      decoration: InputDecoration(hintText: "Z value:"),
                    ),
                  ),
                  SizedBox(
                    height: _screenH / 45,
                  ),
                  ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          double input = double.parse(_zValueController.text);
                          if (stdNum[input
                                  .toString()
                                  .substring(0, input.toString().length - 1)] ==
                              null) {
                            _output = "Please correct your input";
                          } else {
                            _output = stdNum[input.toString().substring(
                                        0, input.toString().length - 1)]![
                                    int.parse(input.toString()[
                                        input.toString().length - 1])]
                                .toString();
                          }
                        });
                      },
                      icon: Icon(Icons.calculate_rounded),
                      label: Text(
                        "Find STD value",
                        style: TextStyle(
                            fontSize: _screenH / 45,
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: _screenH / 35,
                  ),
                  Container(
                    child: Text(
                      "The probablity density for Z value is: " + (_output),
                      style: TextStyle(
                          fontSize: _screenH / 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: _screenH / 35,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: _screenH / 25,
            ),
          ],
        ),
      ),
    );
  }

  void _calculatePermutation() {
    // Implementation of calculatePermutation method
  }

  void _calculateCombination() {
    // Implementation of calculateCombination method
  }
}
