import 'package:flutter/material.dart';

import '../../../constants.dart';

class EditPassword extends StatefulWidget {
  const EditPassword({Key? key}) : super(key: key);

  @override
  _EditPasswordState createState() => _EditPasswordState();
}

var finalconstants = constants();
var currentpassword, newpassword, retypepassword;

class _EditPasswordState extends State<EditPassword> {
  var ispasswordvisible = true;
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
                  "Edit Password",
                  style: TextStyle(color: finalconstants.blue, fontSize: 18),
                )
              ],
            ),
            SizedBox(
              height: 22,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 19, vertical: 5),
              child: TextFormField(
                initialValue: currentpassword,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: 'Current Password',
                  labelStyle: TextStyle(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 19, vertical: 5),
              child: TextFormField(
                obscureText: ispasswordvisible,
                initialValue: newpassword,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(ispasswordvisible == true
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined),
                    onPressed: () {
                      setState(() {
                        ispasswordvisible = !ispasswordvisible;
                      });
                    },
                  ),
                  labelText: 'New Password',
                  labelStyle: TextStyle(),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 19, vertical: 5),
              child: TextFormField(
                obscureText: ispasswordvisible,
                initialValue: retypepassword,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(ispasswordvisible == true
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined),
                    onPressed: () {
                      setState(() {
                        ispasswordvisible = !ispasswordvisible;
                      });
                    },
                  ),
                  labelText: 'Retype New Password',
                  labelStyle: TextStyle(),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            MaterialButton(
              onPressed: () {},
              color: finalconstants.blue,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: Text(
                  'Done',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        )),
      ),
    );
  }
}
