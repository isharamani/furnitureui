import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controller/authcontroller.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  AuthController authController = AuthController();
  TextEditingController emailController = TextEditingController();

  resetPassword(String email) async {
    try {
      if(emailController.text == ""){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
              "enter email",
              style: TextStyle(fontSize: 20),
            )));

      }else{await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
            "Password Reset Email has been sent !",
            style: TextStyle(fontSize: 20),
          )));}

    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
          "No user found that email.",
          style: TextStyle(fontSize: 20),
        )));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100),
          Text(
            "Forgot Password?",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 32,
                color: Color(0XFF3D3c3c)),
          ),
          SizedBox(height: 5),
          Text(
            "Please enter your email address to\n"
            "       recieve a verification code.",
            style: TextStyle(color: Color(0XFFB5B5B5), fontSize: 14),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 20, right: 10),
            child: Container(
              height: Get.height / 15,
              width: Get.width / 1.1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.white),
              child: Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.email,
                        color: Color(0XFF909090),
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          hintText: "Email",
                          hintStyle: TextStyle(color: Color(0XFF909090))),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 10),
            child: InkWell(
              onTap: () {
                resetPassword(emailController.text);

              },
              child: Container(
                height: MediaQuery.of(context).size.height / 17,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                    child: Text(
                  "Send Email",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
