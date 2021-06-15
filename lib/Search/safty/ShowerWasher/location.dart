import 'package:flutter/material.dart';
import 'package:mma_mse/floors/floor1.dart';
import 'package:mma_mse/floors/floor2.dart';

class eyewashStation extends StatefulWidget {
  eyewashStation({Key key}) : super(key: key);

  @override
  _eyewashStationState createState() => _eyewashStationState();
}

class _eyewashStationState extends State<eyewashStation> {
  final PageController controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      scrollDirection: Axis.horizontal,
      children: [
        floor1(
          fire: false,
          eye: true,
          visitFromOhter: true,
        ),
        floor2(
          visitFromOhter: true,
          fire: false,
          eye: true,
        )
      ],
    );
  }
}
