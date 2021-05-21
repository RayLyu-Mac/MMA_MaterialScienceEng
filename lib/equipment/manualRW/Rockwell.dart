import 'package:flutter/material.dart';
import 'package:mma_mse/Search/Test/TestsDetailes/hardness_t_back.dart';
import 'package:mma_mse/user_note.dart';
import 'package:mma_mse/Instruction/utm_instruction/utmInstructionMain.dart';
import 'package:mma_mse/equipment/functionButtonMode.dart';
import 'package:mma_mse/SendEmail/sendEmailMain.dart';
import 'package:mma_mse/Instruction/rockwell/manual/manualRWMain.dart';

class hardness_test extends StatefulWidget {
  hardness_test(
      {Key key,
      @optionalTypeArgs this.emailTo,
      @optionalTypeArgs this.location})
      : super(key: key);
  final String location;
  final String emailTo;

  @override
  _hardness_testState createState() => _hardness_testState();
}

class _hardness_testState extends State<hardness_test> {
  double _screenWidth;
  double _screenH;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RockWell Hardness Test Machine"),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                top: _screenH / 45,
                left: _screenWidth / 2 + 2,
                child: Text(
                  'Introduction',
                  style: TextStyle(
                      fontSize: _screenH / 30, fontWeight: FontWeight.bold),
                )),
            Positioned(
              top: _screenH / 16,
              left: _screenWidth / 2 + 2,
              child: Container(
                  constraints: BoxConstraints.expand(
                      width: _screenWidth / 2.2, height: 280),
                  child: Text(
                    'A universal testing machine (UTM), also known as a universal tester,[1] materials testing machine or materials test frame, is used to test the tensile strength and compressive strength of materials. An earlier name for a tensile testing machine is a tensometer. The "universal" part of the name reflects that it can perform many standard tensile and compression tests on materials, components, and structures (in other words, that it is versatile).',
                    style: TextStyle(
                        fontSize: _screenH / 55, fontWeight: FontWeight.bold),
                  )),
            ),
            Positioned(
              top: _screenH / 30,
              left: _screenWidth / 30 + 2,
              child: GestureDetector(
                child: Container(
                    constraints: BoxConstraints.expand(
                        width: _screenWidth / 2.5, height: _screenH / 2),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/manualRW.jpg?raw=true"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            functionButtonMode(
              top: _screenH / 1.56,
              left: _screenWidth / 12,
              buttonName: "Instruction",
              pageTo: ManualRWInstr(),
              warnV: "t-4WN785oxM",
            ),
            functionButtonMode(
              top: _screenH / 1.8,
              left: _screenWidth / 12,
              buttonName: "Theory",
              pageTo: hardness_test_bg(),
            ),
            functionButtonMode(
              top: _screenH / 1.8,
              left: _screenWidth / 2 + 16,
              buttonName: "Result",
              pageTo: hardness_test(),
            ),
            functionButtonMode(
              top: _screenH / 1.56,
              left: _screenWidth / 2 + 16,
              buttonName: "Manager",
              pageTo: EmailContent(
                  locationOfEqup: widget.location != null
                      ? widget.location
                      : "Not Specificed",
                  nameOfEqup: "Llyods Tensile Tester",
                  emailTo: widget.emailTo != null
                      ? widget.emailTo
                      : "Please enter the email address!"),
            ),
            Positioned(
                top: _screenH / 1.33,
                left: _screenWidth / 1.3,
                child: FloatingActionButton(
                    backgroundColor: Colors.black,
                    child: Icon(Icons.add),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => user_note(
                                    loc: "ML Rock Well Machine",
                                    themem_color: Colors.pink[100],
                                  )));
                    }))
          ],
        ),
      ),
    );
  }
}
