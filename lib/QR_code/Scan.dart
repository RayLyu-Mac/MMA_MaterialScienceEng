import 'package:barcode_scan_fix/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:mma_mse/Search/equpment/equb_ava_data.dart';
import 'package:page_transition/page_transition.dart';

class qrScanner extends StatefulWidget {
  qrScanner({Key key}) : super(key: key);

  @override
  _qrScannerState createState() => _qrScannerState();
}

class _qrScannerState extends State<qrScanner> {
  @override
  void goToPage(qr_result) {
    print(to["Automatic Bulk Abrasive Cutter"]);
    Navigator.push(
        context,
        PageTransition(
            child: to[qr_result], type: PageTransitionType.bottomToTop));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          child: Text("Start QR Code Scan"),
          onPressed: () async {
            String codeSanner = await BarcodeScanner.scan(); //barcode scnner
            setState(() {
              goToPage(codeSanner);
            });
          },
        ),
      ),
    );
  }
}
