import 'package:flutter/material.dart';
import 'package:furnitureui/furniture/Home.dart';
import 'package:furnitureui/furniture/signup.dart';
import 'package:get/get.dart';

import 'bottom-bar.dart';
import 'controller/authcontroller.dart';
import 'forgot_password.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  AuthController authController = AuthController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
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
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 20, bottom: 700),
                child: Container(
                  height: MediaQuery.of(context).size.height / 500,
                  width: MediaQuery.of(context).size.width / 3.5,
                  decoration: BoxDecoration(color: Color(0XFFBDBDBD)),
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 100),
              child: Text(
                "Hello !",
                style: TextStyle(fontSize: 30, color: Color(0XFF909090)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 150),
              child: Text(
                "WELCOME BACK",
                style: TextStyle(
                    color: Color(0XFF303030),
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30, top: 250),
              child: Container(
                  height: MediaQuery.of(context).size.height / 1.9,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      Form(
                          key: _formkey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Column(
                              children: [
                                TextFormField(
                                  controller: emailController,
                                  obscureText: false,
                                  decoration: const InputDecoration(
                                    labelText: 'Email',
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter your email';
                                    }
                                    return null;
                                  },
                                ),
                                TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Please Enter Password";
                                    }
                                    return null;
                                  },
                                  controller: passwordController,
                                  decoration: InputDecoration(
                                    hintText: "Password",
                                    suffixIcon: IconButton(
                                      icon: Icon(isPasswordVisible
                                          ? Icons.visibility
                                          : Icons.visibility_off),
                                      onPressed: () {
                                        setState(() {
                                          isPasswordVisible =
                                              !isPasswordVisible;
                                        });
                                      },
                                    ),
                                  ),
                                  obscureText: !isPasswordVisible,
                                ),
                              ],
                            ),
                          )),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 20),
                      //   child: TextFormField(
                      //     controller: emailController,
                      //     obscureText: true,
                      //     decoration: const InputDecoration(
                      //       labelText: 'Email',
                      //     ),
                      //     validator: (value) {
                      //       if (value!.isEmpty) {
                      //         return 'Please enter your email';
                      //       }
                      //       return null;
                      //     },
                      //   ),
                      // ),
                      SizedBox(
                        height: 50,
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 20),
                      //   child: TextFormField(
                      //     validator: (value) {
                      //       if (value == null || value.isEmpty) {
                      //         return "Please Enter Password";
                      //       }
                      //       return null;
                      //     },
                      //     controller: passwordController,
                      //     decoration: InputDecoration(
                      //       hintText: "Password",
                      //       suffixIcon: IconButton(
                      //         icon: Icon(isPasswordVisible
                      //             ? Icons.visibility
                      //             : Icons.visibility_off),
                      //         onPressed: () {
                      //           setState(() {
                      //             isPasswordVisible = !isPasswordVisible;
                      //           });
                      //         },
                      //       ),
                      //     ),
                      //     obscureText: !isPasswordVisible,
                      //   ),
                      // ),
                      SizedBox(height: 50),
                      InkWell(
                        onTap: () {
                          Get.to(ForgotPassword());
                        },
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                              color: Color(0XFF303030),
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: InkWell(
                          onTap: () {
                            if (_formkey.currentState!.validate()) {
                              authController.userLoginFireFlutter(emailController.text.toString(), passwordController.text.toString());


                            }
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height / 20,
                            width: MediaQuery.of(context).size.width / 1,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: Text(
                              "Log in",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top:31),
                        child: GestureDetector(
                            onTap: () {
                             Get.to(SignUp());
                            },
                            child: Text(
                              "SIGN UP",
                              style: TextStyle(
                                  color: Color(0XFF303030),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            )),
                      )
                    ],
                  )),
            ),
          ]),
        ],
      ),
    );
  }
}
