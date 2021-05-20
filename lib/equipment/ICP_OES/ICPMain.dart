import 'package:flutter/material.dart';
import 'package:mma_mse/user_note.dart';
import 'package:url_launcher/url_launcher.dart';
import 'BackG.dart';
import 'package:mma_mse/equipment/functionButtonMode.dart';
import 'package:mma_mse/Instruction/icp_instruction/icpMain.dart';
import 'package:mma_mse/SendEmail/sendEmailMain.dart';

class ICP_OES_Main extends StatefulWidget {
  ICP_OES_Main({Key key}) : super(key: key);

  @override
  _ICP_OES_MainState createState() => _ICP_OES_MainState();
}

class _ICP_OES_MainState extends State<ICP_OES_Main> {
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
        title: Text("ICP-OES"),
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
                    'ICP-OES (Inductively coupled plasma - optical emission spectrometry) is a technique in which the composition of elements in (mostly water-dissolved) samples can be determined using plasma and a spectrometer. The technique has been commercially available since 1974 and thanks to its reliability, multi-element options and high throughput, it has become a widely applied in both routine research as in more specific analysis purposes.',
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
                              "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/icp.jpg?raw=true"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            functionButtonMode(
              top: _screenH / 1.56,
              left: _screenWidth / 12,
              buttonName: "Instruction",
              warnNote:
                  "Hydrofluoric Acid: Concentrated HF is extremely dangerous and differs from other acids because the fluoride ion readily penetrates the skin, causing destruction of deep tissue layers, including bone. Pain associated with.",
              pageTo: icp_instruction(),
            ),
            functionButtonMode(
              top: _screenH / 1.8,
              left: _screenWidth / 12,
              buttonName: "Schedulling",
              url: _launchURL,
            ),
            functionButtonMode(
                top: _screenH / 1.8,
                left: _screenWidth / 2 + 16,
                buttonName: "Theory",
                pageTo: ICP_OES_bg()),
            functionButtonMode(
                top: _screenH / 1.56,
                left: _screenWidth / 2 + 16,
                buttonName: "Manager",
                pageTo: EmailContent(
                  emailTo: "rayrayray0495@gmail.com",
                  locationOfEqup: "JHE 235",
                  nameOfEqup: "ICP-OES",
                )),
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
                                    loc: "JHE 236 ICP-OES",
                                    themem_color: Colors.red[100],
                                  )));
                    }))
          ],
        ),
      ),
    );
  }
}

_launchURL() async {
  const url = 'https://msebooking.mcmaster.ca/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
