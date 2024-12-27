import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/services.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui';

class warningVideo extends StatefulWidget {
  final Widget pageTo;
  final String videoID;
  const warningVideo({required this.pageTo, required this.videoID, Key? key})
      : super(key: key);

  @override
  _warningVideoState createState() => _warningVideoState();
}

class _warningVideoState extends State<warningVideo>
    with SingleTickerProviderStateMixin {
  static const double kDialogPadding = 24.0;
  static const double kButtonSpacing = 16.0;
  static const double kBorderRadius = 20.0;

  late YoutubePlayerController _controller;
  late Size screenSize;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoID,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        showLiveFullscreenButton: false,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    screenSize = MediaQuery.of(context).size;
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  Widget _buildButton({
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
    Color? backgroundColor,
  }) {
    return Container(
      width: screenSize.width * 0.5,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? Theme.of(context).primaryColor,
          foregroundColor: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: kDialogPadding,
            vertical: 12,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 2,
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon),
            SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(
                fontSize: screenSize.height * 0.02,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        width: screenSize.width * 0.85,
        constraints: BoxConstraints(
          maxWidth: 500,
          maxHeight: screenSize.height * 0.8,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(kBorderRadius),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(kBorderRadius),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.red.shade100.withOpacity(0.9),
                    Colors.red.shade200.withOpacity(0.9),
                  ],
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Header
                  Container(
                    padding: EdgeInsets.all(kDialogPadding),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.white.withOpacity(0.2),
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.warning_amber_rounded,
                          color: Colors.red.shade700,
                          size: 28,
                        ),
                        SizedBox(width: 12),
                        Text(
                          "Safety Instructions",
                          style: TextStyle(
                            fontSize: screenSize.height * 0.024,
                            fontWeight: FontWeight.bold,
                            color: Colors.red.shade900,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Video Player
                  Padding(
                    padding: EdgeInsets.all(kDialogPadding),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(kBorderRadius - 8),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 8,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: YoutubePlayer(
                          controller: _controller,
                          showVideoProgressIndicator: true,
                          progressIndicatorColor: Colors.red,
                          progressColors: ProgressBarColors(
                            playedColor: Colors.red,
                            handleColor: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Buttons
                  Padding(
                    padding: EdgeInsets.all(kDialogPadding),
                    child: Column(
                      children: [
                        _buildButton(
                          icon: Icons.check_circle_outline,
                          label: "Continue",
                          backgroundColor: Colors.green,
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                child: widget.pageTo,
                                duration: Duration(milliseconds: 500),
                                type: PageTransitionType.rightToLeft,
                              ),
                            ).then((_) => Navigator.pop(context));
                          },
                        ),
                        SizedBox(height: kButtonSpacing),
                        _buildButton(
                          icon: Icons.close,
                          label: "Cancel",
                          backgroundColor: Colors.grey[700],
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
