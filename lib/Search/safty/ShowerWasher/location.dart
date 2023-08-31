import 'package:flutter/material.dart';
import 'package:mma_mse/floors/floor1.dart';
import 'package:mma_mse/floors/floor2.dart';
import 'package:mma_mse/floors/floor3.dart';

class eyewashStation extends StatefulWidget {
  final bool fire;
  final bool eye;
  eyewashStation({required this.eye, required this.fire, Key? key})
      : super(key: key);

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
          fire: widget.fire,
          eye: widget.eye,
          visitFromOhter: true,
        ),
        floor2(
          visitFromOhter: true,
          fire: widget.fire,
          eye: widget.eye,
        ),
        floor3(eye: true)
      ],
    );
  }
}
