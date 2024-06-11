import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Home.dart';
import '../Log in.dart';
import '../bottom-bar.dart';



class AuthController extends GetxController{


  userLoginFireFlutter(String email, String password) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) {
        Get.snackbar("Login", "Successfully" ,snackPosition: SnackPosition.BOTTOM);
        Get.to(BottomBar());
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  userRegistration(String email, String Password) async {
    try{
      await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: Password).then((value) {
        Get.snackbar("Register", "Successfully" ,snackPosition: SnackPosition.BOTTOM);

        Get.to(Page2());
      },);
    }catch(e){
      debugPrint("$e=======>error");
    }
  }
}





