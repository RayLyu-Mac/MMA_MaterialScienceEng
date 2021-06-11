import 'package:flutter/material.dart';
import 'package:mma_mse/floors/floor2/room239.dart';
import 'package:flutter/services.dart';

class room239Main extends StatefulWidget {
  room239Main({Key key}) : super(key: key);

  @override
  _room239MainState createState() => _room239MainState();
}

class _room239MainState extends State<room239Main> {
  double _screenWidth;
  double _screenH;
  double adjust;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    if (_screenH / _screenWidth > 2) {
      _screenH = _screenH * 0.83;
      adjust = 0.83;
    } else {
      adjust = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: null,
    );
  }
}
