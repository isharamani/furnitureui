import 'package:flutter/material.dart';
import 'package:furnitureui/furniture/Home.dart';
import 'package:furnitureui/furniture/track_oder.dart';
import 'package:get/get.dart';

import 'bottom-bar.dart';

class Congrets extends StatefulWidget {
  const Congrets({super.key});

  @override
  State<Congrets> createState() => _CongretsState();
}

class _CongretsState extends State<Congrets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom:30),
            child: Text("SUCCESS!",style: TextStyle(color: Color(0XFF303030),fontSize: 40,fontWeight: FontWeight.bold)),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom:30),
              child: Stack(
                children: [
                  Container(
                      height:Get.height/4,
                      width:Get.width/1.5,
                      color: Colors.white,
                      child: Image.asset("assets/Group 69.jpg")),
                  Container(
                    height: 50,
                    width: 50,
                    margin:EdgeInsets.only(left: 120,top:195) ,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.green),
                    child: Icon(Icons.done,color: Colors.white,size:30 , ),
                  ),

                ]
              ),

            ),

          ),
          Text("Your order will be delivered soon.\n"
           " Thank you for choosing our app!",style: TextStyle(color: Color(0XFF606060),fontSize:18)),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              Get.to(Track());
            },
            child: Container(
              height: Get.height/16,
              width: Get.width/1.3,
              decoration: BoxDecoration( borderRadius: BorderRadius.circular(5),color: Colors.black,),
              child: Center(child: Text("Track your orders",style: TextStyle( fontSize: 18,color: Colors.white,))),
            ),
          ),

          SizedBox(height:30),
          InkWell(
            onTap: () {
           Get.to(BottomBar());
            },
            child: Container(
              height: Get.height/16,
              width: Get.width/1.3,
              decoration: BoxDecoration( borderRadius: BorderRadius.circular(5),color: Colors.white,border: Border.all(color: Colors.black)),
                     child: Center(child: Text("BACK TO HOME",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w400))),
            ),
          ),],
      ),
    );
  }
}
