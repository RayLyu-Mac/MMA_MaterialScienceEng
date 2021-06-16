import 'package:mma_mse/button.dart';
import 'package:page_transition/page_transition.dart';
import 'package:floatingpanel/floatingpanel.dart';
import 'package:flutter/material.dart';

class floationPanel extends StatefulWidget {
  final List<dynamic> buttonP;
  final List<IconData> button;
  final IconData panelIcon;
  final int animationTime;

  floationPanel(
      {@required this.button,
      @required this.buttonP,
      @optionalTypeArgs this.animationTime,
      @optionalTypeArgs this.panelIcon,
      Key key})
      : super(key: key);

  @override
  _floationPanelState createState() => _floationPanelState();
}

class _floationPanelState extends State<floationPanel> {
  @override
  Widget build(BuildContext context) {
    return FloatBoxPanel(
        panelIcon: widget.panelIcon ?? Icons.add,
        dockType: DockType
            .outside, // 'DockType.inside' or 'DockType.outside', weather to dock the panel outside or inside the edge of the screen
        dockOffset:
            5.0, // Offset the dock from the edge depending on the 'dockType' property
        panelAnimDuration: widget.animationTime ??
            400, // Duration for panel open and close animation
        panelAnimCurve:
            Curves.easeOut, // Curve for panel open and close animation
        dockAnimDuration: widget.animationTime ??
            400, // Auto dock to the edge of screen - animation duration
        dockAnimCurve: Curves.easeOut, // Auto dock animation curve
        panelOpenOffset:
            20.0, // Offset from the edge of screen when panel is open
        buttons: widget.button,
        onPressed: (numbers) {
          if (widget.buttonP[numbers] is Widget) {
            Navigator.push(
                context,
                PageTransition(
                    child: widget.buttonP[numbers],
                    type: PageTransitionType.scale,
                    alignment: Alignment.topCenter));
          } else {
            return widget.buttonP[numbers]();
          }
        });
  }
}
