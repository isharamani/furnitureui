import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:furnitureui/furniture/Log in.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'bottom-bar.dart';
import 'controller/authcontroller.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  AuthController authController = AuthController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  bool isPasswordVisible1 = false;
  bool isPasswordVisible = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 70),
          Stack(children: [
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 700),
                child: Container(
                  height: MediaQuery.of(context).size.height / 500,
                  width: MediaQuery.of(context).size.width / 3.5,
                  decoration: BoxDecoration(color: Color(0XFFBDBDBD)),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 700),
                child: Image.asset(
                  "assets/Group.jpg",
                  height: 60,
                  width: 60,
                ),
              ),
               const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 20, bottom: 700),
                child: Container(
                  height: MediaQuery.of(context).size.height / 500,
                  width: MediaQuery.of(context).size.width / 3.5,
                  decoration: const BoxDecoration(color: Color(0XFFBDBDBD)),
                ),
              ),
            ]),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 100),
              child: Text(
                "WELCOME",
                style: TextStyle(
                    color: Color(0XFF303030),
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30, top: 170),
              child: Container(
                  height: MediaQuery.of(context).size.height / 1.6,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Form(
                    key: _formkey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: TextFormField(
                            controller: nameController,
                            obscureText: false,
                            decoration: const InputDecoration(
                              labelText: 'Name',
                            ),
                            validator: (value) {
                              if (value == null || value!.isEmpty) {
                                return 'Please enter your name';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: TextFormField(
                            controller: emailController,
                            obscureText:false,
                            decoration: const InputDecoration(
                              labelText: 'Email',
                            ),
                            validator: (value) {
                              if (value == null || value!.isEmpty) {
                                return 'Please enter your email';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: TextFormField(
                            controller: passwordController,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              suffixIcon: IconButton(
                                icon: Icon(isPasswordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    isPasswordVisible = !isPasswordVisible;
                                  });
                                },
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value!.isEmpty) {
                                return 'Please enter your password';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: TextFormField(
                            controller: numberController,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: ' Conform Password',
                              suffixIcon: IconButton(
                                icon: Icon(isPasswordVisible1
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    isPasswordVisible1 = !isPasswordVisible1;
                                  });
                                },
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value!.isEmpty) {
                                return 'Please enter your conform password';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: InkWell(
                            onTap: () {
    if (_formkey.currentState!.validate()){
      authController.userRegistration(emailController.text, passwordController.text);

    };},
                            child: Container(
                              height: MediaQuery.of(context).size.height / 20,
                              width: MediaQuery.of(context).size.width / 1,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(
                                "SIGN UP",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 18),
                              )),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(Page2());
                          },
                          child: Text(
                            "Already have account? SIGN IN",
                            style: TextStyle(
                                color: Color(0XFF303030),
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          ]),
        ],
      ),
    );
  }
}
