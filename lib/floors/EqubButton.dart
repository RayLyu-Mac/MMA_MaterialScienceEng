import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class EqubButton extends StatelessWidget {
  final String name;
  final Widget pageTo;
  final String function;
  final String backImg;
  final Color backColor;
  const EqubButton(
      {required this.backImg,
      required this.name,
      required this.backColor,
      required this.pageTo,
      required this.function,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(6),
      child: Card(
        color: backColor,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: InkWell(
          child: Padding(
              padding: const EdgeInsets.all(9.0),
              child: Row(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image(
                    height: 170,
                    width: 160,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      backImg,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      function,
                      textAlign: TextAlign.left,
                    )
                  ],
                ))
              ])),
          onTap: () {
            Navigator.push(
                context,
                PageTransition(
                    duration: const Duration(milliseconds: 500),
                    child: pageTo,
                    type: PageTransitionType.rightToLeft));
          },
        ),
      ),
    );
  }
}
