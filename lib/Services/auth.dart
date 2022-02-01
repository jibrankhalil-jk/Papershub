import 'dart:async';
import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

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

  Future pdfurl(var clas, year, subject, papertype) async {
    var url;
    try {
      var ref = _storage
          .ref('/classes/$clas/akueb/$year/$subject/eng/$papertype/paper.pdf');
      url = await ref.getDownloadURL();
    } catch (e) {
      print('-' * 22);
      print('/classes/$clas/akueb/$year/$subject/eng/$papertype/paper.pdf');
      print('-' * 22);
      var err =
          "[firebase_storage/object-not-found] No object exists at the desired reference.";
    }
    return url;
  }

  Future testpdfurl(var url) async {
    try {
      var ref = _storage.ref('$url');
      url = await ref.getDownloadURL();
    } catch (e) {
      print('-' * 22);
      print('$url');
      print('-' * 22);
      var err =
          "[firebase_storage/object-not-found] No object exists at the desired reference.";
    }
    return url;
  }

  Future datalist() async {
    var data;
    await _firestore.collection('testing_services').get().then((QuerySnapshot) {
      data = QuerySnapshot.docs;
    });
    return data;
  }
}
