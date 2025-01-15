/// The `StandardNavigationDrawer` class provides a standardized drawer widget with modern UI for
/// navigation options in a Flutter application.
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mma_mse/Search/Test/Test_Page/test_main.dart';
import 'package:mma_mse/Search/equpment/equb_ava_main.dart';
import 'package:mma_mse/Search/safty/saftyMain.dart';
import 'package:mma_mse/Search/tools/toolsMain.dart';
import 'package:mma_mse/layout_overview.dart';
import 'package:page_transition/page_transition.dart';
import 'package:clay_containers/clay_containers.dart';

/// A standardized drawer widget used across the application
/// Provides navigation options with a modern, consistent UI
class StandardNavigationDrawer extends StatelessWidget {
  // UI Constants
  static const double _iconSize = 24.0;
  static const double _spacing = 16.0;
  static const double _borderRadius = 12.0;
  static const Duration _transitionDuration = Duration(milliseconds: 300);

  // App Constants
  static const String _appVersion = '1.0.0';
  static const String _subtitle = 'MSE Navigation Menu';

  // Clay styling constants
  static const double _clayDepth = 40;
  static const double _spread = 6;

  final String headerTitle;

  const StandardNavigationDrawer({Key? key, required this.headerTitle})
      : super(key: key);

  /// Builds a standardized drawer item with modern design
  Widget _buildNavigationItem({
    required BuildContext context,
    required IconData icon,
    required String title,
    required Widget destination,
    Color? iconColor,
    Color? backgroundColor,
  }) {
    Color baseColor = const Color(0xFFF0F0F3);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: _spacing / 2,
        vertical: _spacing / 8,
      ),
      child: Card(
        color: backgroundColor?.withOpacity(0.1) ?? baseColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(_borderRadius),
        ),
        elevation: 0,
        child: ListTile(
          leading: Icon(
            icon,
            size: _iconSize,
            color: iconColor?.withOpacity(0.8) ?? Colors.grey.shade700,
          ),
          title: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.blue.shade800,
            ),
          ),
          onTap: () => _handleNavigation(context, destination),
        ),
      ),
    );
  }

  /// Handles navigation with transition animation
  void _handleNavigation(BuildContext context, Widget destination) {
    Navigator.pop(context); // Close drawer
    Navigator.push(
      context,
      PageTransition(
        type: PageTransitionType.rightToLeft,
        child: destination,
        duration: _transitionDuration,
      ),
    );
  }

  /// Builds the header section with modern design
  Widget _buildDrawerHeader() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue.shade100,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(_borderRadius),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(_spacing, 40, _spacing, _spacing),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // App Logo/Avatar
              const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.school,
                  size: 35,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: _spacing),
              // Header Title
              Text(
                headerTitle,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Subtitle
              const Text(
                _subtitle,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFFF0F0F3),
      child: Column(
        children: [
          // Header Section
          _buildDrawerHeader(),

          // Navigation Items
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: _spacing),
              children: [
                // Main Navigation Items
                _buildNavigationItem(
                  context: context,
                  icon: FontAwesomeIcons.mapLocation,
                  title: 'Room Layout',
                  destination: layout_overview(),
                  iconColor: Colors.blue,
                  backgroundColor: Colors.blue,
                ),
                _buildNavigationItem(
                  context: context,
                  icon: FontAwesomeIcons.microscope,
                  title: 'Equipment',
                  destination: EquipmentMain(),
                  iconColor: Colors.purple,
                  backgroundColor: Colors.purple,
                ),
                _buildNavigationItem(
                  context: context,
                  icon: FontAwesomeIcons.tools,
                  title: 'Tools',
                  destination: toolMain(),
                  iconColor: Colors.green,
                  backgroundColor: Colors.green,
                ),
                _buildNavigationItem(
                  context: context,
                  icon: FontAwesomeIcons.flask,
                  title: 'Tests',
                  destination: test_ava(),
                  iconColor: Colors.orange,
                  backgroundColor: Colors.orange,
                ),
                _buildNavigationItem(
                  context: context,
                  icon: FontAwesomeIcons.shieldHalved,
                  title: 'Safety',
                  destination: SafetyMain(),
                  iconColor: Colors.red,
                  backgroundColor: Colors.red,
                ),

                const Divider(height: _spacing * 2),

                // Additional Information Section
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: _spacing),
                  child: Text(
                    'More Information',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                _buildNavigationItem(
                  context: context,
                  icon: Icons.info_outline,
                  title: 'About',
                  destination: layout_overview(),
                  iconColor: Colors.grey.shade700,
                ),
                _buildNavigationItem(
                  context: context,
                  icon: Icons.help_outline,
                  title: 'Help',
                  destination: layout_overview(),
                  iconColor: Colors.grey.shade700,
                ),
              ],
            ),
          ),

          // Version Information
          Padding(
            padding: const EdgeInsets.all(_spacing),
            child: Text(
              'Version $_appVersion',
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
