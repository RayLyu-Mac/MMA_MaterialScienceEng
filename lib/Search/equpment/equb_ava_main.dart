import 'package:mma_mse/floationPanel/PanelMain.dart';
import 'equb_available.dart';
import 'equb_ava_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EquipmentMain extends StatefulWidget {
  const EquipmentMain({Key? key}) : super(key: key);

  @override
  _EquipmentMainState createState() => _EquipmentMainState();
}

class _EquipmentMainState extends State<EquipmentMain> {
  final ScrollController _controller = ScrollController();
  final List<String> _equipments = [];

  final Map<String, Color> categoryColors = {
    'tensile': Colors.amber.shade100,
    'hardness': Colors.blueGrey.shade100,
    'microscope': Colors.purple.shade100,
    'furnace': Colors.red.shade100,
    'cutter': Colors.green.shade100,
    'mounting': Colors.indigo.shade100,
    'polisher': Colors.lightBlue.shade100,
  };

  @override
  void initState() {
    super.initState();
    _equipments.addAll(equipmentList.map((e) => e.title));
    _controller.addListener(() => setState(() {}));
  }

  Widget _buildEquipmentCard(int index) {
    final equipment = equipmentList[index];
    return GestureDetector(
      onTap: () => _navigateToDetail(equipment),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: equipment.materialColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            Hero(
              tag: 'image${equipment.title}',
              child: Image.network(
                equipment.image,
                fit: BoxFit.cover,
                height: 200,
                width: double.infinity,
              ),
            ),
            Hero(
                tag: 'text' + equipment.title,
                child: Container(
                  margin: EdgeInsets.fromLTRB(10, 15, 10, 4),
                  color: Colors.transparent,
                  child: Text(
                    '${equipment.title}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
            Hero(
                tag: 'subtitle' + equipment.title,
                child: Container(
                    margin: EdgeInsets.all(7),
                    color: Colors.transparent,
                    child: Text(
                      equipment.subTitle,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )))
          ],
        ),
      ),
    );
  }

  void _navigateToDetail(HeroType equipment) {
    Navigator.of(context).push(
      PageRouteBuilder(
        fullscreenDialog: true,
        transitionDuration: const Duration(milliseconds: 1000),
        pageBuilder: (context, animation, secondaryAnimation) => equb_ava(
          heroType: HeroType(
            title: equipment.title,
            subTitle: equipment.subTitle,
            fText: equipment.fText,
            image: equipment.image,
            pageTo: equipment.pageTo,
            materialColor: equipment.materialColor,
            category: equipment.category,
          ),
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Equipment Available in MSE"),
        actions: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(FontAwesomeIcons.timesCircle),
          ),
        ],
      ),
      drawer: _buildDrawer(),
      body: SafeArea(
        child: ListView.builder(
          controller: _controller,
          itemCount: equipmentList.length,
          itemBuilder: (context, index) => _buildEquipmentCard(index),
        ),
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Equipment Categories',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          for (var category in categoryColors.entries)
            _buildDrawerItem(
              title: category.key.toUpperCase(),
              backgroundColor: category.value,
              children: equipmentList
                  .where((equipment) =>
                      equipment.category.toLowerCase() ==
                      category.key.toLowerCase())
                  .map((equipment) => ListTile(
                        title: Text(equipment.title),
                        onTap: () => _navigateToDetail(equipment),
                      ))
                  .toList(),
            ),
        ],
      ),
    );
  }

  Widget _buildDrawerItem({
    required String title,
    required Color backgroundColor,
    required List<Widget> children,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ExpansionTile(
        title: Text(
          title,
          style: const TextStyle(color: Colors.black87, fontSize: 15),
        ),
        children: children,
      ),
    );
  }
}
