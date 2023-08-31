import 'package:flutter/material.dart';
import 'welcome.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(mainp()));
}

class mainp extends StatelessWidget {
  const mainp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Maintaince Mangament and Accessibility System',
      home: AspectRatio(
        aspectRatio: 16 / 9,
        child: welcome(),
      ),
    );
  }
}
