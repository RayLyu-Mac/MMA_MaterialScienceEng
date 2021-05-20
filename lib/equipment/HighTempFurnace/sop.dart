import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class StandardOperaHighTFurnace extends StatefulWidget {
  StandardOperaHighTFurnace({Key key}) : super(key: key);

  @override
  _StandardOperaHighTFurnaceState createState() =>
      _StandardOperaHighTFurnaceState();
}

class _StandardOperaHighTFurnaceState extends State<StandardOperaHighTFurnace> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SOP for High Temperature Furnace"),
      ),
      body: Center(
          child: Container(
        child: SfPdfViewer.network(
          'http://ebooks.syncfusion.com/downloads/flutter-succinctly/flutter-succinctly.pdf',
          key: _pdfViewerKey,
        ),
      )),
    );
  }
}
