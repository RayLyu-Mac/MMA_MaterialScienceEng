import 'package:flutter/material.dart';

class ZoomInPhaseD extends StatelessWidget {
  final String imgPD;
  const ZoomInPhaseD({@optionalTypeArgs this.imgPD, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
        child: FittedBox(
      child: Image(
        image: NetworkImage(imgPD ??
            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/phaseDiagram/feCRight.png?raw=true"),
      ),
      fit: BoxFit.fitWidth,
    ));
  }
}
