import 'package:flutter/material.dart';

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
  const DashButton(
      {@optionalTypeArgs this.buttonName,
      @optionalTypeArgs this.height,
      @optionalTypeArgs this.width,
      @required this.cardColor,
      @required this.left,
      @required this.top,
      @required this.stepTitle,
      @required this.instruction,
      @optionalTypeArgs this.button_icon,
      @optionalTypeArgs this.fontsize,
      Key key})
      : super(key: key);

  @override
  _DashButtonState createState() => _DashButtonState();
}

class _DashButtonState extends State<DashButton> {
  double _screenWidth;
  double _screenH;
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
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return SimpleDialog(
                    backgroundColor: widget.cardColor,
                    contentPadding: EdgeInsets.fromLTRB(_screenWidth / 30,
                        _screenH / 30, _screenWidth / 50, _screenH / 25),
                    title: Text(
                      widget.stepTitle,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: _screenWidth / 24),
                    ),
                    children: [
                      SizedBox(
                        height: _screenWidth / 50,
                      ),
                      Text(
                        widget.instruction,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: _screenWidth / 33),
                      )
                    ],
                  );
                });
          },
          child: Container(
            padding: EdgeInsets.fromLTRB(
                widget.width != null ? widget.width / 5 : _screenWidth / 60,
                widget.width != null ? widget.width / 8 : _screenH / 27,
                _screenWidth / 80,
                widget.height != null ? widget.height / 8 : _screenH / 60),
            child: swtich(
                iconButton: widget.button_icon,
                iconName: widget.buttonName,
                fontSize: widget.fontsize,
                screenH: _screenH),
            constraints: BoxConstraints.expand(
                width: widget.width != null ? widget.width : _screenWidth / 4.7,
                height: widget.height != null ? widget.height : _screenH / 7),
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
      {@required this.iconButton,
      @required this.iconName,
      @required this.screenH,
      @optionalTypeArgs this.fontSize,
      Key key})
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
