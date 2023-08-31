import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class DashButton extends StatefulWidget {
  final Color cardColor;
  final String stepTitle;
  final double top;
  final double left;
  final String instruction;
  final String buttonName;
  final Icon button_icon;
  final double width;
  final double height;
  final double fontsize;
  final Widget pageTo;
  const DashButton(
      {this.buttonName,
      this.height,
      this.width,
      this.cardColor,
      this.pageTo,
      this.left,
      this.top,
      this.stepTitle,
      this.instruction,
      this.button_icon,
      this.fontsize,
      Key key})
      : super(key: key);

  @override
  _DashButtonState createState() => _DashButtonState();
}

class _DashButtonState extends State<DashButton> {
  double _screenWidth = 0;
  double _screenH = 0;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: widget.top,
        left: widget.left,
        child: InkWell(
          onTap: () {
            if (widget.pageTo != null) {
              Navigator.push(
                  context,
                  PageTransition(
                      child: widget.pageTo ?? Container(),
                      type: PageTransitionType.scale,
                      alignment: Alignment.topCenter));
            } else {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return SimpleDialog(
                      backgroundColor: widget.cardColor,
                      contentPadding: EdgeInsets.fromLTRB(_screenWidth / 30,
                          _screenH / 30, _screenWidth / 50, _screenH / 25),
                      title: Text(
                        widget.stepTitle ?? "Null",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: _screenWidth / 24),
                      ),
                      children: [
                        SizedBox(
                          height: _screenWidth / 50,
                        ),
                        Text(
                          widget.instruction ?? "Null",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: _screenWidth / 33),
                        )
                      ],
                    );
                  });
            }
          },
          child: Container(
            padding: EdgeInsets.fromLTRB(
                widget.width ?? _screenWidth / 60,
                widget.width ?? _screenH / 27,
                _screenWidth / 80,
                widget.height ?? _screenH / 60),
            child: swtich(
                iconButton: widget.button_icon ?? Icon(Icons.abc),
                iconName: widget.buttonName ?? "Null",
                fontSize: widget.fontsize ?? 10,
                screenH: _screenH),
            constraints: BoxConstraints.expand(
                width: widget.width ?? _screenWidth / 4.7,
                height: widget.height ?? _screenH / 7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(offset: const Offset(4, 4), color: widget.cardColor)
              ],
            ),
          ),
        ));
  }
}

class swtich extends StatelessWidget {
  final double screenH;
  final Icon iconButton;
  final String iconName;
  final double fontSize;
  const swtich(
      {this.iconButton, this.iconName, this.screenH, this.fontSize, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (iconButton != null) {
      return iconButton;
    } else {
      return Text(
        iconName,
        style: TextStyle(
            fontSize: fontSize != null ? fontSize : screenH / 15,
            fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      );
    }
  }
}
