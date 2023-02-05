import 'package:chat_c7_str/database_utils/database_utils.dart';
import 'package:chat_c7_str/models/my_user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  MyUser? myUser;
  late User? firebaseUser;

  MyProvider() {
    firebaseUser = FirebaseAuth.instance.currentUser;
    if (firebaseUser != null) {
      initMyUser();
    }
  }

  void initMyUser() async {
    myUser = await DataBaseUtils.readUser(firebaseUser?.uid ?? "");
  }
}
