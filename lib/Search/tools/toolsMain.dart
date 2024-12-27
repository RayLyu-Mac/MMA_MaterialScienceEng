import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mma_mse/Drawer.dart';
import 'tooData.dart';
import 'package:mma_mse/floationPanel/PanelMain.dart';
import 'package:mma_mse/floors/EqubButton.dart';

class toolMain extends StatefulWidget {
  toolMain({Key? key}) : super(key: key);

  @override
  _toolMainState createState() => _toolMainState();
}

class _toolMainState extends State<toolMain> {
  List<ToolData> toolDataList = [];

  @override
  void initState() {
    super.initState();
    toolDataList = createToolList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomMenu(),
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            padding: EdgeInsets.symmetric(horizontal: 16),
            icon: Icon(Icons.close, size: 28),
            onPressed: () => Navigator.pop(context),
          )
        ],
        backgroundColor: Colors.grey[800],
        title: Text(
          "Materials Engineering Tools",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.5,
          ),
        ),
      ),
      backgroundColor: Colors.grey[100],
      drawer: StandardNavigationDrawer(headerTitle: "Materials Tool Box"),
      body: SafeArea(
        child: GridView.builder(
          padding: EdgeInsets.all(16),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.85,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: toolDataList.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(16),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => toolDataList[index].pageTo,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        toolDataList[index].bgColor.withOpacity(0.8),
                        toolDataList[index].bgColor,
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(toolDataList[index].backImg),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        toolDataList[index].name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
