import 'package:flutter/material.dart';
import 'data.dart';

class ErrorFunction extends StatefulWidget {
  const ErrorFunction({Key? key}) : super(key: key);

  @override
  _ErrorFunctionState createState() => _ErrorFunctionState();
}

class _ErrorFunctionState extends State<ErrorFunction> {
  final TextEditingController _inputController = TextEditingController();
  String _output = '';
  late double _screenWidth;
  late double _screenH;

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
      margin: EdgeInsets.all(16),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text("Error Function Calculator"),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            _buildCard(
              title: "Error Function Calculator",
              children: [
                TextField(
                  controller: _inputController,
                  decoration: InputDecoration(
                    labelText: "Enter X value",
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.grey[100],
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 16),
                ElevatedButton.icon(
                  onPressed: _calculateErf,
                  icon: Icon(Icons.calculate),
                  label: Text("Calculate"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  ),
                ),
                if (_output.isNotEmpty)
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text(
                      "Result: $_output",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _calculateErf() {
    // Add calculation logic
  }
}
