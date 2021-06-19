import 'safty/saftyMain.dart';
import 'equpment/equb_ava_main.dart';
import 'tools/toolsMain.dart';
import 'room/room_main.dart';
import 'Test/Test_Page/test_main.dart';
import 'package:flutter/material.dart';
import 'package:mma_mse/floors/floor1.dart';
import 'package:mma_mse/floors/floor2.dart';
import 'package:mma_mse/floors/floor3.dart';
import 'package:mma_mse/Search/contact/contactMain.dart';

class extraMenu extends StatefulWidget {
  extraMenu({Key key}) : super(key: key);

  @override
  _extraMenuState createState() => _extraMenuState();
}

class _extraMenuState extends State<extraMenu> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      collapsedBackgroundColor: Colors.blue[50],
      backgroundColor: Colors.blue[50],
      leading: Icon(Icons.menu_book_rounded),
      title: Text(
        "Menu",
        style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
      ),
      children: [
        floor1customListTile(name: "Equipment", pageTo: equb_main(), fonts: 16),
        floor1customListTile(name: "Case Study", pageTo: test_ava(), fonts: 16),
        floor1customListTile(name: "Tools", pageTo: toolMain(), fonts: 16),
        floor1customListTile(name: "Safety", pageTo: saftyMain(), fonts: 16),
        floor1customListTile(name: "Rooms", pageTo: room_main(), fonts: 16)
      ],
    );
  }
}

class floorMenu extends StatelessWidget {
  const floorMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      collapsedBackgroundColor: Colors.red[50],
      backgroundColor: Colors.red[50],
      leading: Icon(Icons.stairs_rounded),
      title: Text(
        "Floors",
        style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
      ),
      children: [
        floor1customListTile(
            name: "Floor I",
            pageTo: floor1(
              fire: false,
              eye: false,
            ),
            fonts: 16),
        floor1customListTile(
            name: "Floor II",
            pageTo: floor2(fire: false, eye: false),
            fonts: 16),
        floor1customListTile(
            name: "Floor III",
            pageTo: floor3(
              eye: false,
            ),
            fonts: 16),
      ],
    );
  }
}

class contact extends StatelessWidget {
  const contact({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return floor1customListTile(
        name: "Contact Info",
        backC: Colors.green[50],
        pageTo: ContactMSE(),
        fonts: 20,
        leadIcon: Icons.contact_page);
  }
}
