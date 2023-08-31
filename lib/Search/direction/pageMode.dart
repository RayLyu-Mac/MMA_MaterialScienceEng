import 'package:flutter/material.dart';

class bio_mat_model extends StatefulWidget {
  const bio_mat_model(
      {this.course_name,
      this.back_img,
      this.course_description,
      this.other_info,
      Key key})
      : super(key: key);

  final String course_name;
  final String course_description;
  final String other_info;
  final String back_img;

  @override
  _bio_mat_modelState createState() => _bio_mat_modelState();
}

class _bio_mat_modelState extends State<bio_mat_model> {
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
    return Stack(
      children: [
        Positioned(
            top: 0,
            left: 0,
            child: Container(
              child: Image(
                fit: BoxFit.cover,
                height: _screenH,
                width: _screenWidth,
                alignment: Alignment.center,
                image: NetworkImage(widget.back_img),
              ),
            )),
        Positioned(
          top: _screenH / 3,
          left: _screenWidth / 12,
          child: Container(
              constraints: BoxConstraints.expand(
                  width: _screenWidth / 1.2, height: _screenH / 2.4),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(
                    width: 1.5,
                    color: Colors.white.withOpacity(0.2),
                  )),
              child: Column(children: [
                Text(
                  widget.course_name,
                  style: TextStyle(
                      fontSize: _screenH / 30,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
                Text(
                  widget.course_description,
                  style: TextStyle(
                      fontSize: _screenH / 50,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
              ])),
        )
      ],
    );
  }
}
