import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'safty/saftyMain.dart';
import 'equpment/equb_ava_main.dart';
import 'tools/toolsMain.dart';
import 'direction/dir_main.dart';
import 'Test/Test_Page/test_main.dart';
import 'package:mma_mse/floors/floor1.dart';
import 'package:mma_mse/floors/floor2.dart';
import 'package:mma_mse/floors/floor3.dart';
import 'package:mma_mse/Search/contact/contactMain.dart';
import 'package:mma_mse/relatedInfo/reference.dart';
import 'package:mma_mse/relatedInfo/AboutUsMain.dart';
import 'package:url_launcher/url_launcher.dart';

class MenuListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget destination;
  final bool isSubItem;

  const MenuListTile({
    required this.title,
    required this.icon,
    required this.destination,
    this.isSubItem = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(
        left: isSubItem ? 32.0 : 16.0,
        right: 16.0,
      ),
      leading: Icon(
        icon,
        size: 20,
        color: Colors.grey[700],
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 15,
          color: Colors.grey[800],
          fontWeight: isSubItem ? FontWeight.normal : FontWeight.w500,
        ),
      ),
      onTap: () {
        Navigator.pop(context); // Close drawer
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
    );
  }
}

class extraMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerColor: Colors.transparent,
        listTileTheme: ListTileTheme.of(context).copyWith(
          dense: true,
          visualDensity: VisualDensity.compact,
        ),
      ),
      child: ExpansionTile(
        leading: Icon(Icons.menu_book_rounded, color: Colors.grey[700]),
        title: Text(
          "Menu",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.grey[800],
          ),
        ),
        children: [
          MenuListTile(
            title: "Equipment",
            icon: FontAwesomeIcons.microscope,
            destination: EquipmentMain(),
            isSubItem: true,
          ),
          MenuListTile(
            title: "Case Study",
            icon: FontAwesomeIcons.briefcase,
            destination: test_ava(),
            isSubItem: true,
          ),
          MenuListTile(
            title: "Tools",
            icon: FontAwesomeIcons.tools,
            destination: toolMain(),
            isSubItem: true,
          ),
          MenuListTile(
            title: "Safety",
            icon: FontAwesomeIcons.shieldAlt,
            destination: SafetyMain(),
            isSubItem: true,
          ),
          MenuListTile(
            title: "Contact Info",
            icon: Icons.contact_page,
            destination: ContactMSE(),
            isSubItem: true,
          ),
          MenuListTile(
            title: "Tech Elective",
            icon: FontAwesomeIcons.graduationCap,
            destination: direction_main(),
            isSubItem: true,
          ),
        ],
      ),
    );
  }
}

class floorMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: Icon(Icons.stairs_rounded, color: Colors.grey[700]),
      title: Text(
        "Floors",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.grey[800],
        ),
      ),
      children: [
        MenuListTile(
          title: "Floor I",
          icon: Icons.looks_one_outlined,
          destination: floor1(fire: false, eye: false),
          isSubItem: true,
        ),
        MenuListTile(
          title: "Floor II",
          icon: Icons.looks_two_outlined,
          destination: floor2(fire: false, eye: false),
          isSubItem: true,
        ),
        MenuListTile(
          title: "Floor III",
          icon: Icons.looks_3_outlined,
          destination: floor3(eye: false),
          isSubItem: true,
        ),
      ],
    );
  }
}

class aboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: Icon(FontAwesomeIcons.infoCircle, color: Colors.grey[700]),
      title: Text(
        "Other Info",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.grey[800],
        ),
      ),
      children: [
        MenuListTile(
          title: "About the Team",
          icon: FontAwesomeIcons.users,
          destination: AboutTeam(),
          isSubItem: true,
        ),
        MenuListTile(
          title: "Reference",
          icon: FontAwesomeIcons.bookOpen,
          destination: reference(),
          isSubItem: true,
        ),
      ],
    );
  }
}

_launchURL() async {
  final uri = Uri.parse("https://www.instagram.com/macmatlssociety/");
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $uri';
  }
}
