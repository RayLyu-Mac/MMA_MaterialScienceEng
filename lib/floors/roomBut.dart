import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:mma_mse/fancyButton.dart';

class roomButton extends StatelessWidget {
  final double? left;
  final double? top;
  final double length;
  final double width;
  final String? name;
  final Widget? pageTo;
  final double? fontsize;
  final Color? backC;
  final IconData? icon;
  final int? elevation;
  final String? details;
  final String? detailTitle;
  final double? detailsFontS;
  final double? detailsTiFontS;
  final IconData? titleIcon;
  final String? backImg;
  const roomButton(
      {@optionalTypeArgs this.left,
      @optionalTypeArgs this.titleIcon,
      @optionalTypeArgs this.detailTitle,
      @optionalTypeArgs this.detailsFontS,
      @optionalTypeArgs this.detailsTiFontS,
      @optionalTypeArgs this.backC,
      @optionalTypeArgs this.details,
      @optionalTypeArgs this.top,
      required this.length,
      @optionalTypeArgs this.backImg,
      @optionalTypeArgs this.fontsize,
      @optionalTypeArgs this.icon,
      required this.width,
      @optionalTypeArgs this.name,
      @optionalTypeArgs this.pageTo,
      @optionalTypeArgs this.elevation,
      Key? key})
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
                            duration: const Duration(milliseconds: 550),
                            child: pageTo ?? Container(),
                            type: PageTransitionType.leftToRight))
                    : showGeneralDialog(
                        barrierColor: Colors.black.withOpacity(0.5),
                        transitionDuration: Duration(milliseconds: 300),
                        barrierDismissible: true,
                        barrierLabel: '',
                        context: context,
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return Container();
                        },
                        transitionBuilder: (context, a1, a2, widget) {
                          return Transform.scale(
                              scale: a1.value,
                              child: Opacity(
                                  opacity: a1.value,
                                  child: SimpleDialog(
                                    shape: Border.all(
                                      width: 4,
                                      style: BorderStyle.solid,
                                      color: Colors.white,
                                    ),
                                    contentPadding:
                                        EdgeInsets.fromLTRB(20, 15, 25, 35),
                                    title: Text(detailTitle!,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: detailsTiFontS ?? 20)),
                                    children: [
                                      Text(details!,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: detailsTiFontS ?? 17)),
                                      pageTo != null
                                          ? fancyBut(
                                              pageTo: pageTo!,
                                              width: width / 1.1,
                                              height: length / 4,
                                              icon: FontAwesomeIcons.restroom,
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
                  child: Container(
                      decoration: backImg != null
                          ? BoxDecoration(
                              image: DecorationImage(
                                  colorFilter: new ColorFilter.mode(
                                      Colors.black.withOpacity(0.4),
                                      BlendMode.dstATop),
                                  image: NetworkImage(backImg!)),
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                  width: 6, color: Colors.grey.shade100),
                              color: backC ?? Colors.grey)
                          : BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                  width: 6, color: Colors.grey.shade100),
                              color: backC ?? Colors.grey),
                      child: Center(
                        child: icon != null
                            ? Icon(
                                icon,
                                size: 27,
                              )
                            : titleIcon != null
                                ? Row(
                                    children: [
                                      SizedBox(
                                        width: width / 10,
                                      ),
                                      Text(
                                        name!,
                                        style: TextStyle(
                                            fontSize: fontsize ?? 23,
                                            color: Colors.grey[100],
                                            fontWeight: FontWeight.w500),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(
                                        width: width / 18,
                                      ),
                                      Icon(
                                        titleIcon,
                                        size: 18,
                                        color: Colors.white,
                                      ),
                                    ],
                                  )
                                : Text(
                                    name!,
                                    style: TextStyle(
                                        fontSize: fontsize ?? 23,
                                        color: Colors.grey[100],
                                        fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.center,
                                  ),
                      ))),
            ),
          )
        : GestureDetector(
            onTap: () {
              details == null
                  ? Navigator.push(
                      context,
                      PageTransition(
                          duration: const Duration(milliseconds: 600),
                          child: pageTo ?? Container(),
                          type: PageTransitionType.leftToRight))
                  : showGeneralDialog(
                      barrierColor: Colors.black.withOpacity(0.5),
                      transitionDuration: Duration(milliseconds: 400),
                      barrierDismissible: true,
                      barrierLabel: '',
                      context: context,
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return Container();
                      },
                      transitionBuilder: (context, a1, a2, widget) {
                        return Transform.scale(
                            scale: a1.value,
                            child: Opacity(
                                opacity: a1.value,
                                child: SimpleDialog(
                                  shape: Border.all(
                                    width: 5,
                                    style: BorderStyle.solid,
                                    color: Colors.grey.shade100,
                                  ),
                                  contentPadding:
                                      EdgeInsets.fromLTRB(20, 15, 25, 35),
                                  title: Text(detailTitle!,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: detailsTiFontS ?? 20)),
                                  children: [
                                    Text(details!,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: detailsTiFontS ?? 15)),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    pageTo != null
                                        ? fancyBut(
                                            pageTo: pageTo!,
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
                decoration: backImg != null
                    ? BoxDecoration(
                        image: DecorationImage(
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.4),
                                BlendMode.dstATop),
                            image: NetworkImage(backImg!)),
                        borderRadius: BorderRadius.circular(25),
                        border:
                            Border.all(width: 6, color: Colors.grey.shade100),
                        color: backC ?? Colors.grey)
                    : BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border:
                            Border.all(width: 6, color: Colors.grey.shade100),
                        color: backC ?? Colors.grey),
                child: Center(
                  child: icon != null
                      ? Icon(
                          icon,
                          size: 27,
                        )
                      : titleIcon != null
                          ? Row(
                              children: [
                                Icon(titleIcon),
                                Text(
                                  name!,
                                  style: TextStyle(
                                      fontSize: fontsize ?? 22,
                                      color: Colors.grey[100],
                                      fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            )
                          : Text(
                              name!,
                              style: TextStyle(
                                  fontSize: fontsize ?? 22,
                                  color: Colors.grey[100],
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                )),
          );
  }
}
