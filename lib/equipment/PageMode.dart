import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:mma_mse/equipment/functionButtonMode.dart';
import 'package:mma_mse/workingInPro.dart';
import 'package:page_transition/page_transition.dart';
import 'package:mma_mse/wholeQR.dart';
//import 'package:qrscan/qrscan.dart' as scanner;
import 'package:mma_mse/Drawer.dart';

class EqubPageMode extends StatefulWidget {
  final String title;
  final String? intro;
  final String img;
  final String? warnNote;
  final String? warnVido;
  final Widget instruction;
  final Widget? theory;
  final Color backC;
  final String? dash;
  final IconData? extraIcon;
  final Widget? extraPage;
  final String? toolTip;
  final double? fontSize;
  final bool? oritation;
  EqubPageMode(
      {Key? key,
      required this.title,
      this.oritation = true,
      this.fontSize,
      this.toolTip,
      this.extraIcon,
      this.extraPage,
      this.dash,
      required this.backC,
      this.theory,
      required this.instruction,
      this.warnNote = "None",
      this.warnVido = "None",
      required this.img,
      required this.intro,
      this.emailTo,
      this.location})
      : super(key: key);
  final String? location;
  final String? emailTo;
  @override
  _EqubPageModeState createState() => _EqubPageModeState();
}

class _EqubPageModeState extends State<EqubPageMode> {
  late double _screenWidth;
  late double _screenH;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  void goToPage(qrResult) {
    Navigator.push(
        context,
        PageTransition(
            child: qr_pageTo[qrResult]!, type: PageTransitionType.bottomToTop));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50], // Lighter background
      appBar: AppBar(
        elevation: 2,
        title: Text(
          widget.title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white, // Explicit white color
          ),
        ),
        backgroundColor: Colors.blue[900], // Darker blue for better contrast
        iconTheme: IconThemeData(color: Colors.white), // White drawer icon
        actions: [
          IconButton(
            padding: EdgeInsets.symmetric(horizontal: 16),
            icon: Icon(Icons.close, size: 28),
            onPressed: () => Navigator.pop(context),
            color: Colors.white, // White close icon
          )
        ],
      ),
      drawer: StandardNavigationDrawer(headerTitle: widget.title),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image Section
              Container(
                height: _screenH * 0.35,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    widget.img,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(height: 24),

              // Introduction Section
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Title with info icon
                          Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.circleInfo,
                                color: Colors.blue[900],
                                size: 20,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Introduction',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[900],
                                ),
                              ),
                            ],
                          ),
                          // Action icons
                          Row(
                            children: [
                              if (widget.extraPage != null)
                                IconButton(
                                  tooltip: widget.toolTip,
                                  icon: Icon(
                                    widget.extraIcon ??
                                        FontAwesomeIcons.clipboardList,
                                    color: Colors.blue[700],
                                    size: 22,
                                  ),
                                  onPressed: () => Navigator.push(
                                    context,
                                    PageTransition(
                                      child: widget.extraPage!,
                                      type: PageTransitionType.bottomToTop,
                                    ),
                                  ),
                                ),
                              IconButton(
                                tooltip: "Safety Sheet",
                                icon: Icon(
                                  FontAwesomeIcons.shieldHalved,
                                  color: Colors.red[700],
                                  size: 22,
                                ),
                                onPressed: _Safety,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Text(
                        widget.intro ?? "None",
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 24),

              // Action Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildActionButton(
                    "Instructions",
                    widget.instruction,
                    widget.warnNote,
                    widget.warnVido,
                    Colors.blue[700]!,
                  ),
                  _buildActionButton(
                    widget.dash ?? "Theory",
                    widget.theory ?? workingInProg(),
                    null,
                    null,
                    Colors.green[700]!,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton(String label, Widget page, String? warnNote,
      String? warnVideo, Color color) {
    return ElevatedButton.icon(
      icon: Icon(
        label == "Instructions"
            ? FontAwesomeIcons.bookOpen // Book icon for instructions
            : FontAwesomeIcons.flask, // Flask icon for theory
        color: Colors.white,
        size: 18,
      ),
      label: Text(
        label,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold, // Made text bold
          letterSpacing: 0.5,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16, // Increased padding
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 3, // Added elevation
      ),
      onPressed: () => _navigateToPage(page),
    );
  }

  void _navigateToPage(Widget page) {
    Navigator.push(
      context,
      PageTransition(
        child: page,
        type: PageTransitionType.bottomToTop,
      ),
    );
  }

  // Future scanQR() async {
  //   await Permission.camera.request();
  //   String? codeSanner = await scanner.scan(); //barcode scnner
  //   setState(() {
  //     goToPage(codeSanner);
  //   });
  // }
}

_launchURL() async {
  final url = Uri.parse('https://msebooking.mcmaster.ca/');
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

_Safety() async {
  const url =
      'https://docs.google.com/forms/d/e/1FAIpQLSfxc4bqsI4koNBQBCsR02siKhGX-UFDzdNW8_LfxYkVoGuy3Q/viewform?usp=sf_link';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
