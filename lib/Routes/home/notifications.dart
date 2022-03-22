import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Models/notificationmodule.dart';
import '../../constants.dart';

class Notificatiosn extends StatefulWidget {
  const Notificatiosn({Key? key}) : super(key: key);

  @override
  _NotificatiosnState createState() => _NotificatiosnState();
}

constants finalconst = constants();
List<notificationmodel> notifications = [
  notificationmodel("", "Papers Hub", "Welcome to Papers Hub", "1 mi ago"),
  notificationmodel("", "Papers Hub", ".", "1 min ago"),
];

class _NotificatiosnState extends State<Notificatiosn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Notification",
          style: TextStyle(color: finalconst.blue),
        ),
      ),
      body: ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (_, s) {
            final notificationmodule = notifications[s];
            return Card(
              margin: EdgeInsets.all(9),
              child: Dismissible(
                direction: DismissDirection.endToStart,
                key: Key(s.toString()),
                child: ListTile(
                  leading: CircleAvatar(),
                  title: Text(notificationmodule.title),
                  subtitle: Text(notificationmodule.subtitle),
                  trailing: Text(notificationmodule.time),
                ),
                background: Container(
                  color: Colors.red,
                  child: Row(
                    children: [
                      Spacer(flex: 44),
                      Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                      Spacer(
                        flex: 4,
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
