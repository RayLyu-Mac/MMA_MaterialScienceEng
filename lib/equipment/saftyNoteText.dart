import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui';

class warning extends StatefulWidget {
  final Widget pageTo;
  final String warning_note;
  const warning({required this.pageTo, required this.warning_note, Key? key})
      : super(key: key);

  @override
  _warningState createState() => _warningState();
}

class _warningState extends State<warning> with SingleTickerProviderStateMixin {
  // Constants for styling
  static const double kDialogPadding = 24.0;
  static const double kButtonSpacing = 16.0;
  static const double kIconSize = 48.0;

  late Size screenSize;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    screenSize = MediaQuery.of(context).size;
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
          maxWidth: 450, // Maximum width for larger screens
          maxHeight: screenSize.height * 0.8,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
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
              padding: EdgeInsets.all(kDialogPadding),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Warning Icon
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.warning_rounded,
                      size: kIconSize,
                      color: Colors.red.shade700,
                    ),
                  ),

                  SizedBox(height: kDialogPadding),

                  // Title
                  Text(
                    "Before Entering",
                    style: TextStyle(
                      fontSize: screenSize.height * 0.028,
                      fontWeight: FontWeight.bold,
                      color: Colors.red.shade900,
                    ),
                  ),

                  SizedBox(height: kDialogPadding),

                  // Warning Text
                  Flexible(
                    child: SingleChildScrollView(
                      child: Text(
                        widget.warning_note,
                        style: TextStyle(
                          fontSize: screenSize.height * 0.022,
                          color: Colors.black87,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),

                  SizedBox(height: kDialogPadding),

                  // Buttons
                  Column(
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
