import 'package:flutter/material.dart';

import '../../../constants.dart';

class editingProfiel extends StatefulWidget {
  const editingProfiel({Key? key}) : super(key: key);

  @override
  _editingProfielState createState() => _editingProfielState();
}

var finalconstants = constants();
var fullname = "Jibran Khali",
    username = "jibranjk786",
    email = "dev.jibrankhali@gmail.com",
    password = "password";

class _editingProfielState extends State<editingProfiel> {
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
                  "Edit Profile",
                  style: TextStyle(color: finalconstants.blue, fontSize: 18),
                )
              ],
            ),
            SizedBox(
              height: 22,
            ),
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                    backgroundColor: Colors.white,
                    radius: 64,
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: CircleAvatar(
                      maxRadius: 15,
                      backgroundColor: finalconstants.blue,
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                        size: 17,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 19, vertical: 5),
              child: TextFormField(
                initialValue: fullname,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: 'Full name',
                  labelStyle: TextStyle(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 19, vertical: 5),
              child: TextFormField(
                enabled: false,
                initialValue: username,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: 'user name',
                  labelStyle: TextStyle(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 19, vertical: 5),
              child: TextFormField(
                initialValue: email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'E-mail ID',
                  labelStyle: TextStyle(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 19, vertical: 5),
              child: TextFormField(
                obscureText: ispasswordvisible,
                initialValue: password,
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
                  labelText: 'Password',
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
