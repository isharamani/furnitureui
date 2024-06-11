import 'dart:async';

import 'package:flutter/material.dart';
import 'package:furnitureui/furniture/Log in.dart';
import 'package:get/get.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:3),(){
      Get.to(Page2());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset("assets/Boarding.jpg", fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 240, left: 80),
            child: Text(
              "MAKE YOUR",
              style: TextStyle(color: Color(0XFF606060), fontSize: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 280, left: 80),
            child: Text(
              "HOME BEAUTIFUL",
              style: TextStyle(
                  fontSize: 32,
                  color: Color(0XFF303030),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "The best simple place where you\n"
              "discover most wonderful furnitures\n"
              "and make your home beautiful",
              style: TextStyle(fontSize: 18, color: Color(0XFF808080)),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 520),
              child: Container(
                height: MediaQuery.of(context).size.height / 20,
                width: MediaQuery.of(context).size.width / 2.8,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Get.to(Page2());
                      },
                      child: Text("Get Started",
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
