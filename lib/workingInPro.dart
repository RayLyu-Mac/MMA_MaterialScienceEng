import 'package:flutter/material.dart';

class workingInProg extends StatelessWidget {
  const workingInProg({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("404 Not Found"),
      ),
      body: Center(
        child: Container(
            width: 300,
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Image(
                  image: NetworkImage(
                      "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/work%20in%20progress.png?raw=true"),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "The content is working on progress! Please give me more time qwq\n \n客官请再宽限几日,小的已经在努力堆了：）",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )
              ],
            )),
      ),
    );
  }
}
