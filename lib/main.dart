import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'DashBoard.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MainApp());
  });
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Maintenance Management and Accessibility System',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const DashBoard(),
    );
  }
}
