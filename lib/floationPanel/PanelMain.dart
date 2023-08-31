import 'package:mma_mse/DashBoard.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:mma_mse/wholeQR.dart';
import 'package:mma_mse/Search/SearchAll.dart';

class ButtomMenu extends StatefulWidget {
  ButtomMenu({super.key});

  @override
  State<ButtomMenu> createState() => _ButtomMenuState();
}

class _ButtomMenuState extends State<ButtomMenu> {
  @override
  void goToPage(qrResult) {
    Navigator.push(
        context,
        PageTransition(
            child: qr_pageTo[qrResult]!,
            type: PageTransitionType.bottomToTop));
  }

  @override
  Widget build(BuildContext context) {
    List pageTo = [DashBoard(), EqupSearch()];
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          if (pageTo[value] is Widget) {
            Navigator.push(
                context,
                PageTransition(
                    child: pageTo[value],
                    type: PageTransitionType.scale,
                    alignment: Alignment.topCenter));
          } else {
            return pageTo[value]();
          }
        },
        items: [
          // BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: "QR Code"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Find"),
        ]);
  }

  // Future scanQR() async {
  //   await Permission.camera.request();
  //   String? codeSanner = await scanner.scan(); //barcode scnner
  //   setState(() {
  //     goToPage(codeSanner);
  //   });
  // }
}
