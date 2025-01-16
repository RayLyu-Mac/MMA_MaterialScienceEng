import 'package:flutter/material.dart';

class unitC extends StatefulWidget {
  unitC({Key? key}) : super(key: key);

  @override
  _unitCState createState() => _unitCState();
}

class _unitCState extends State<unitC> {
  double _screenWidth = 0;
  double _screenH = 0;
  double valuea = 0;
  double finalV = 0;
  double adjust = 0;
  String dropdownValuea = 'atm';
  String dropdownValueb = 'atm';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
    if (_screenH / _screenWidth > 2) {
      _screenH = _screenH * 0.83;
      adjust = 0.83;
    }
  }

  TextEditingController before = TextEditingController();
  TextEditingController after = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pressure Converter"),
        backgroundColor: Colors.blue[700],
        elevation: 0,
      ),
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: BoxConstraints(
              maxWidth: 450,
              minWidth: 300,
            ),
            margin: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 10,
                ),
              ],
            ),
            padding: EdgeInsets.all(24),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Header Section
                  _buildHeader(),
                  SizedBox(height: 24),

                  // Input Section
                  _buildInputSection(),
                  SizedBox(height: 16),

                  // Output Unit Selection
                  _buildOutputUnitSection(),
                  SizedBox(height: 24),

                  // Convert Button
                  _buildConvertButton(),
                  SizedBox(height: 24),

                  // Result Display
                  _buildResultDisplay(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Convert Pressure Units",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 8),
        Text(
          "Enter a value and select units to convert between pressure measurements",
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  Widget _buildInputSection() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Input Value",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.grey[700],
            ),
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: TextField(
                  controller: before,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                    hintText: "Enter value",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    hintStyle: TextStyle(color: Colors.grey[400]),
                  ),
                ),
              ),
              SizedBox(width: 12),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey.shade200),
                ),
                child: DropdownButton<String>(
                  value: dropdownValuea,
                  underline: SizedBox(),
                  items: ["atm", "bar", "MPa", "Psi", "torr"]
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (value) => setState(() => dropdownValuea = value!),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildOutputUnitSection() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Convert To",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.grey[700],
            ),
          ),
          SizedBox(height: 12),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey.shade200),
            ),
            child: DropdownButton<String>(
              isExpanded: true,
              value: dropdownValueb,
              underline: SizedBox(),
              items: ["atm", "bar", "MPa", "Psi", "torr"]
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (value) => setState(() => dropdownValueb = value!),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildConvertButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue[700],
        padding: EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 0,
      ),
      onPressed: _convert,
      child: Text(
        "Convert",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildResultDisplay() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blue.shade100),
      ),
      child: Column(
        children: [
          Text(
            "Result",
            style: TextStyle(
              color: Colors.blue[900],
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 12),
          Text(
            finalV != 0
                ? "${finalV.toStringAsExponential(3)} $dropdownValueb"
                : "---",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.blue[700],
            ),
          ),
        ],
      ),
    );
  }

  void _convert() {
    if (before.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter a value')),
      );
      return;
    }

    setState(() {
      try {
        double valuebef = double.parse(before.text);
        // Convert to MPa first (base unit)
        if (dropdownValuea == "atm") {
          valuea = valuebef * 0.101325;
        } else if (dropdownValuea == "bar") {
          valuea = valuebef * 0.1;
        } else if (dropdownValuea == "Psi") {
          valuea = valuebef * 0.00689476;
        } else if (dropdownValuea == "torr") {
          valuea = valuebef * 0.000133322;
        } else {
          valuea = valuebef;
        }

        // Convert from MPa to target unit
        if (dropdownValueb == "atm") {
          finalV = valuea / 0.101325;
        } else if (dropdownValueb == "bar") {
          finalV = valuea / 0.1;
        } else if (dropdownValueb == "Psi") {
          finalV = valuea / 0.00689476;
        } else if (dropdownValueb == "torr") {
          finalV = valuea / 0.000133322;
        } else {
          finalV = valuea;
        }
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Please enter a valid number')),
        );
      }
    });
  }
}
