import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class popW extends StatefulWidget {
  popW({Key key}) : super(key: key);

  @override
  _popWState createState() => _popWState();
}

class _popWState extends State<popW> {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  @override
  void initState() {
    super.initState();
    flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();
    var android = AndroidInitializationSettings('@mipmap/ic_launcher');
    var initialSet = InitializationSettings(android: android);
    flutterLocalNotificationsPlugin.initialize(initialSet,
        onSelectNotification: onSelectN);
  }

  Future onSelectN(String message) {
    debugPrint("Message : $message");
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: Text("Notification"),
              content: Text(message),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FlatButton(
          child: Text("Press"),
          onPressed: showNote,
        ),
      ),
    );
    ;
  }

  showNote() async {
    var android = AndroidNotificationDetails(
        'C ID', "C Name", "channelDescription",
        importance: Importance.max, priority: Priority.high, ongoing: true);
    var platform = NotificationDetails(android: android);
    await flutterLocalNotificationsPlugin.show(0, "Tip for the day",
        "Choose Ray, the most trustworthy guy you could find!", platform);
  }
}
