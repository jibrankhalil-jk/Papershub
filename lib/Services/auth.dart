import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // ------------------------------------- Checking use info -------------------------------------------------------
  Future userinfo() async {
    String uid = "", Name = '', email = "", password = '';
    String userid = _auth.currentUser!.uid;
    List data = [uid, Name, email, password];
    return data;
  }

  // ------------------------------------- sign in with email ,password -------------------------------------------------------

  Future signIn(String email, String password) async {
    try {
      UserCredential result = await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) {
        return value;
      });
      // var saves =  await _firestore
      //     .collection("Boy Scouts")

      var out;
      out = "Account Successfully Created";
      return out;
    } catch (e) {
      print("+" + e.toString() + "+");

      var f;
      if (e.toString() ==
          "[firebase_auth/user-not-found] There is no user record corresponding to this identifier. The user may have been deleted.") {
        f = "No User With this Email.";
      } else if (e.toString() ==
          '[firebase_auth/wrong-password] The password is invalid or the user does not have a password.') {
        f = " Invalid Password";
      } else {
        f = e.toString();
      }
      return f;
    }
  }

  // ------------------------------------- sign up with email,password -------------------------------------------------------
  Future signun(String Name, String Email, String Password) async {
    try {
      UserCredential result = await _auth
          .createUserWithEmailAndPassword(email: Email, password: Password)
          .then((value) {
        return value;
      });
      // await _firestore
      //     .collection("Boy Scouts")
      //     .doc(_auth.currentUser!.uid)
      //     .set({
      //   'Name': Name,
      //   'Email': Email,
      //   "password": Password,
      // }).then((value) {
      //   return value;
      //
      // });
      //

    } catch (e) {
      return print(e.toString());
    }
    ;

    // return userb;
  }

  // ------------------------------------- sign out -------------------------------------------------------
  Future signout() async {
    try {
      _auth.signOut();
      return null;
    } catch (e) {
      return print(e.toString());
    }
  }
}
