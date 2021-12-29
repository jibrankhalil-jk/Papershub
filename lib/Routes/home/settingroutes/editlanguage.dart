import 'package:flutter/material.dart';

import '../../../constants.dart';

class EditLanguage extends StatefulWidget {
  const EditLanguage({Key? key}) : super(key: key);

  @override
  _EditLanguageState createState() => _EditLanguageState();
}

constants finalconst = constants();

class _EditLanguageState extends State<EditLanguage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            SizedBox(
              height: 11,
            ),
            Row(
              children: [
                SizedBox(
                  width: 11,
                ),
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(
                  width: 11,
                ),
                Text(
                  "Language",
                  style: TextStyle(color: finalconst.blue, fontSize: 18),
                )
              ],
            ),
            SizedBox(
              height: 22,
            ),
            RadioListTile(
              onChanged: (value) {
                print(value);
              },
              value: 1,
              groupValue: 4,
              title: Text("English (United Kingdom)English (United Kingdom)"),
            ),
            RadioListTile(
              onChanged: (value) {
                print(value);
              },
              value: 2,
              groupValue: 4,
              title: Text("English"),
            ),
            RadioListTile(
              onChanged: (value) {
                print(value);
              },
              value: 3,
              groupValue: 4,
              title: Text("Urdu"),
            ),
          ],
        )),
      ),
    );
  }
}
