import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'PressureU.dart';
import 'thermalU.dart';
import 'lengthU.dart';
import 'volumeU.dart';
import 'package:mma_mse/customTileScroll.dart';
import 'weightU.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class UnitConverterMain extends StatefulWidget {
  const UnitConverterMain({Key? key}) : super(key: key);

  @override
  _UnitConverterMainState createState() => _UnitConverterMainState();
}

class _UnitConverterMainState extends State<UnitConverterMain> {
  static const double kPadding = 15.0;
  static const double kBorderRadius = 15.0;

  late double _screenWidth;
  late double _screenH;
  final _drawerController = ZoomDrawerController();
  final ScrollController _controller = ScrollController();

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

  List<Widget> _buildDrawerItems() {
    return [
      _buildDrawerHeader(),
      ..._conversionOptions.map((option) => ScrollcustomListTile(
            name: option.name,
            pageTo: option.page,
            fonts: 14,
            controller: _controller,
          )),
    ];
  }

  Widget _buildDrawerHeader() {
    return DrawerHeader(
      child: Column(
        children: [
          Text(
            "Unit Conversion Tool",
            style: TextStyle(
              fontSize: _screenH / 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            constraints: BoxConstraints.expand(
              width: _screenWidth / 1.5,
              height: _screenWidth / 4,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assest/logocolor.png"),
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(height: _screenH / 35),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: _buildAppBar(),
      drawer: Drawer(child: ListView(children: _buildDrawerItems())),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text("Unit Conversion Tools"),
      backgroundColor: Colors.black,
      elevation: 0,
      actions: [
        IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(FontAwesomeIcons.timesCircle),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(
        _screenWidth / 15,
        _screenH / 40,
        _screenWidth / 20,
        _screenH / 15,
      ),
      controller: _controller,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildInfoCard(),
          const SizedBox(height: 20),
          ..._buildConverters(),
        ],
      ),
    );
  }

  List<Widget> _buildConverters() {
    return [
      _buildConverterCard("Pressure Units", unitC()),
      _buildConverterCard("Thermal Units", thermalUC()),
      _buildConverterCard("Length Units", LengthUC()),
      _buildConverterCard("Volume Units", VolumeUC()),
      _buildConverterCard("Weight Units", WeightUC()),
    ];
  }

  Widget _buildConverterCard(String title, Widget page) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        ),
      ),
    );
  }

  Widget _buildInfoCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Unit Conversion Tools",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Convert between different units of measurement commonly used in materials science.",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

final _conversionOptions = [
  (name: "Common unit check", page: 0),
  (name: "Pressure unit conversion", page: 1),
  (name: "Thermal unit conversion", page: 2),
  (name: "Temperature unit conversion", page: 3),
  (name: "Length unit conversion", page: 4),
  (name: "Volume unit conversion", page: 5),
  (name: "Weight unit conversion", page: 6),
];
