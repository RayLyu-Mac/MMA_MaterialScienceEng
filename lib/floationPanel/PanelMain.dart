import 'package:mma_mse/DashBoard.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:mma_mse/wholeQR.dart';
import 'package:mma_mse/Search/SearchAll.dart';

class BottomMenu extends StatefulWidget {
  const BottomMenu({super.key});

  @override
  State<BottomMenu> createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {
  final List<Widget> _pageTo = [DashBoard(), EqupSearch()];

  void _goToPage(String qrResult) {
    if (qr_pageTo.containsKey(qrResult)) {
      Navigator.push(
        context,
        PageTransition(
          child: qr_pageTo[qrResult]!,
          type: PageTransitionType.bottomToTop,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        Navigator.push(
          context,
          PageTransition(
            child: _pageTo[index],
            type: PageTransitionType.scale,
            alignment: Alignment.topCenter,
          ),
        );
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Find"),
      ],
    );
  }
}
