import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:clay_containers/clay_containers.dart';
import 'package:mma_mse/workingInPro.dart';
import 'package:mma_mse/fancyButton.dart';

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
  final String details;
  final String detailTitle;
  final double detailsFontS;
  final double detailsTiFontS;
  const roomButton(
      {@optionalTypeArgs this.left,
      @optionalTypeArgs this.detailTitle,
      @optionalTypeArgs this.detailsFontS,
      @optionalTypeArgs this.detailsTiFontS,
      @optionalTypeArgs this.backC,
      @optionalTypeArgs this.details,
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
                details == null
                    ? Navigator.push(
                        context,
                        PageTransition(
                            duration: const Duration(milliseconds: 500),
                            child: pageTo ?? workingInProg(),
                            type: PageTransitionType.leftToRight))
                    : showGeneralDialog(
                        barrierColor: Colors.black.withOpacity(0.5),
                        transitionDuration: Duration(milliseconds: 300),
                        barrierDismissible: true,
                        barrierLabel: '',
                        context: context,
                        pageBuilder:
                            (context, animation, secondaryAnimation) {},
                        transitionBuilder: (context, a1, a2, widget) {
                          return Transform.scale(
                              scale: a1.value,
                              child: Opacity(
                                  opacity: a1.value,
                                  child: SimpleDialog(
                                    shape: Border.all(
                                      width: 4,
                                      style: BorderStyle.solid,
                                      color: Colors.grey[300],
                                    ),
                                    contentPadding:
                                        EdgeInsets.fromLTRB(20, 15, 25, 35),
                                    title: Text(detailTitle,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: detailsTiFontS ?? 20)),
                                    children: [
                                      Text(details,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: detailsTiFontS ?? 17)),
                                      pageTo != null
                                          ? fancyBut(
                                              pageTo: pageTo,
                                              width: width / 1.1,
                                              height: length / 4,
                                              icon: FontAwesomeIcons.restroom,
                                              buttonName:
                                                  "Check Facility iniside the Rood")
                                          : Container()
                                    ],
                                  )));
                        });
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
                              size: fontsize ?? 26,
                              color: Colors.grey[500],
                            ),
                    )),
              ),
            ))
        : GestureDetector(
            onTap: () {
              details == null
                  ? Navigator.push(
                      context,
                      PageTransition(
                          duration: const Duration(milliseconds: 500),
                          child: pageTo ?? workingInProg(),
                          type: PageTransitionType.leftToRight))
                  : showGeneralDialog(
                      barrierColor: Colors.black.withOpacity(0.5),
                      transitionDuration: Duration(milliseconds: 300),
                      barrierDismissible: true,
                      barrierLabel: '',
                      context: context,
                      pageBuilder: (context, animation, secondaryAnimation) {},
                      transitionBuilder: (context, a1, a2, widget) {
                        return Transform.scale(
                            scale: a1.value,
                            child: Opacity(
                                opacity: a1.value,
                                child: SimpleDialog(
                                  shape: Border.all(
                                    width: 4,
                                    style: BorderStyle.solid,
                                    color: Colors.grey[300],
                                  ),
                                  contentPadding:
                                      EdgeInsets.fromLTRB(20, 15, 25, 35),
                                  title: Text(detailTitle,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: detailsTiFontS ?? 20)),
                                  children: [
                                    Text(details,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: detailsTiFontS ?? 15)),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    pageTo != null
                                        ? fancyBut(
                                            pageTo: pageTo,
                                            width: width / 1.2,
                                            height: length / 1.3,
                                            icon: FontAwesomeIcons.checkDouble,
                                            buttonName:
                                                "Check Facility iniside the Room")
                                        : Container()
                                  ],
                                )));
                      });
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
