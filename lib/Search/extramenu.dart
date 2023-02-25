import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'safty/saftyMain.dart';
import 'equpment/equb_ava_main.dart';
import 'tools/toolsMain.dart';
import 'direction/dir_main.dart';
import 'Test/Test_Page/test_main.dart';
import 'package:flutter/material.dart';
import 'package:mma_mse/floors/floor1.dart';
import 'package:mma_mse/floors/floor2.dart';
import 'package:mma_mse/floors/floor3.dart';
import 'package:mma_mse/Search/contact/contactMain.dart';
import 'package:mma_mse/relatedInfo/reference.dart';
import 'package:mma_mse/relatedInfo/AboutUsMain.dart';
import 'package:url_launcher/url_launcher.dart';

class extraMenu extends StatefulWidget {
  extraMenu({Key? key}) : super(key: key);

  @override
  _extraMenuState createState() => _extraMenuState();
}

class _extraMenuState extends State<extraMenu> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: Icon(Icons.menu_book_rounded),
      title: Text(
        "Menu",
        style: TextStyle(fontSize: 20),
      ),
      children: [
        floor1customListTile(
          name: "   Equipment",
          pageTo: equb_main(),
          fonts: 16,
          leadIcon: FontAwesomeIcons.microscope,
        ),
        floor1customListTile(
          name: "   Case Study",
          pageTo: test_ava(),
          fonts: 16,
          leadIcon: FontAwesomeIcons.briefcase,
        ),
        floor1customListTile(
          name: "   Tools",
          pageTo: toolMain(),
          fonts: 16,
          leadIcon: FontAwesomeIcons.tools,
        ),
        floor1customListTile(
          name: "   Safety",
          pageTo: saftyMain(),
          fonts: 16,
          leadIcon: FontAwesomeIcons.lifeRing,
        ),
        floor1customListTile(
            name: "   Contact Info",
            pageTo: ContactMSE(),
            fonts: 16,
            leadIcon: Icons.contact_page),
        floor1customListTile(
          name: "   Tech Elective",
          pageTo: direction_main(),
          fonts: 16,
          leadIcon: FontAwesomeIcons.paperPlane,
        ),
        floor1customListTile(
          name: "   Activities",
          web: _launchURL,
          fonts: 16,
          leadIcon: FontAwesomeIcons.democrat,
        ),
      ],
    );
  }
}

class floorMenu extends StatelessWidget {
  const floorMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: Icon(Icons.stairs_rounded),
      title: Text(
        "Floors",
        style: TextStyle(fontSize: 20),
      ),
      children: [
        floor1customListTile(
            name: "   Floor I",
            leadIcon: Icons.stairs_rounded,
            pageTo: floor1(
              fire: false,
              eye: false,
            ),
            fonts: 16),
        floor1customListTile(
            name: "   Floor II",
            leadIcon: Icons.stairs_rounded,
            pageTo: floor2(fire: false, eye: false),
            fonts: 16),
        floor1customListTile(
            name: "   Floor III",
            leadIcon: Icons.stairs_rounded,
            pageTo: floor3(
              eye: false,
            ),
            fonts: 16),
      ],
    );
  }
}

class aboutUs extends StatelessWidget {
  const aboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: Icon(FontAwesomeIcons.infoCircle),
      title: Text(
        "Other Info",
        style: TextStyle(fontSize: 20),
      ),
      children: [
        floor1customListTile(
            name: "   About the Team",
            pageTo: AboutTeam(),
            fonts: 19,
            leadIcon: FontAwesomeIcons.peopleCarry),
        floor1customListTile(
          name: "   Reference",
          pageTo: reference(),
          fonts: 19,
          leadIcon: FontAwesomeIcons.checkCircle,
        )
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
