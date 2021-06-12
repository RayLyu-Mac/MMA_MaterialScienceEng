import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:clay_containers/clay_containers.dart';
import 'package:mma_mse/workingInPro.dart';

class roomButton extends StatelessWidget {
  final double left;
  final double top;
  final double length;
  final double width;
  final String name;
  final Widget pageTo;
  final double fontsize;
  final Color backC;
  final IconData icon;
  final int elevation;
  const roomButton(
      {@optionalTypeArgs this.left,
      @optionalTypeArgs this.backC,
      @optionalTypeArgs this.top,
      @required this.length,
      @optionalTypeArgs this.fontsize,
      @optionalTypeArgs this.icon,
      @required this.width,
      @optionalTypeArgs this.name,
      @optionalTypeArgs this.pageTo,
      @optionalTypeArgs this.elevation,
      Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (left != null || top != null)
        ? Positioned(
            top: top,
            left: left,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        duration: const Duration(milliseconds: 500),
                        child: pageTo ?? workingInProg(),
                        type: PageTransitionType.leftToRight));
              },
              child: Container(
                height: length,
                width: width,
                child: ClayContainer(
                    depth: elevation ?? 16,
                    parentColor: backC ?? Colors.blueGrey[100],
                    borderRadius: 4,
                    child: Center(
                      child: icon != null
                          ? Icon(icon)
                          : ClayText(
                              name,
                              size: fontsize ?? 22,
                              color: Colors.grey[500],
                            ),
                    )),
              ),
            ))
        : GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      duration: const Duration(milliseconds: 500),
                      child: pageTo ?? workingInProg(),
                      type: PageTransitionType.leftToRight));
            },
            child: Container(
              height: length,
              width: width,
              child: ClayContainer(
                  depth: elevation ?? 16,
                  parentColor: backC ?? Colors.blueGrey[100],
                  borderRadius: 4,
                  child: Center(
                    child: icon != null
                        ? Icon(icon)
                        : ClayText(
                            name,
                            size: fontsize ?? 22,
                            color: Colors.grey[500],
                          ),
                  )),
            ),
          );
  }
}
