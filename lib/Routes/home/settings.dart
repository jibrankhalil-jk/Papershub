import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:papershub/Routes/home/settingroutes/editlanguage.dart';
import 'package:papershub/Routes/home/settingroutes/editpassword.dart';
import 'package:papershub/Routes/home/settingroutes/editprofile.dart';

import '../../constants.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

GetStorage box = GetStorage();
var apptheme = false;
var constant = constants();
var headingstyle = TextStyle(
    color: finalconst.blue, fontSize: 19, fontWeight: FontWeight.bold);
var swich = false, swich1 = false, swich2 = false;

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Settings",
          style: TextStyle(color: finalconst.blue),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 13,
            ),
            Row(
              children: [
                SizedBox(
                  width: 9,
                ),
                Icon(
                  Icons.account_circle_rounded,
                  color: finalconst.blue,
                  size: 32,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "Account",
                  style: headingstyle,
                )
              ],
            ),
            SizedBox(
              height: 4,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => editingProfiel(),
                  ),
                );
              },
              child: ListTile(
                title: Text("Edit profile"),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => EditPassword(),
                  ),
                );
              },
              child: ListTile(
                title: Text("Change Password"),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Dark Mode"),
                trailing: CupertinoSwitch(
                  value: apptheme,
                  onChanged: (bool value) {
                    setState(() {
                      apptheme = value;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Row(
              children: [
                SizedBox(
                  width: 9,
                ),
                Icon(
                  Icons.notifications,
                  color: finalconst.blue,
                  size: 32,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "Notification",
                  style: headingstyle,
                ),
              ],
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Notifications"),
                trailing: CupertinoSwitch(
                  value: swich1,
                  onChanged: (bool value) {
                    setState(() {
                      swich1 = value;
                    });
                  },
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("App notification"),
                trailing: CupertinoSwitch(
                  value: swich2,
                  onChanged: (bool value) {
                    setState(() {
                      swich2 = value;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              children: [
                SizedBox(
                  width: 9,
                ),
                Icon(
                  Icons.more_vert,
                  color: finalconst.blue,
                  size: 32,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "More",
                  style: headingstyle,
                )
              ],
            ),
            SizedBox(
              width: 4,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => EditLanguage(),
                  ),
                );
              },
              child: ListTile(
                title: Text("Language"),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Logout"),
                trailing: Icon(Icons.logout),
              ),
            ),
            SizedBox(
              height: 14,
            ),
          ],
        ),
      ),
    );
  }
}
