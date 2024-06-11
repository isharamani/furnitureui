import 'package:flutter/material.dart';
import 'package:furnitureui/furniture/payment_method.dart';
import 'package:furnitureui/furniture/reviews.dart';
import 'package:furnitureui/furniture/search_3.dart';
import 'package:furnitureui/furniture/setting.dart';
import 'package:furnitureui/furniture/shipping_addres.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'order.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List product = [
    {"text": "My orders",
      "text1": "Already have 10 orders",
    },
    {"text": "Shipping Addresses",
      "text1": "03 Addresses",
    },
    {"text": "Payment Method",
      "text1": "You have 2 cards",
    },
    {"text": "My reviews",
      "text1": "Reviews for 5 items",
    },
    {"text": "Setting",
      "text1": "Notification,Password,FAQ,Contact",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: InkWell(
                      onTap: () {
                        Get.to(Search());
                      },
                      child: Icon(
                        Icons.search_rounded,
                        size: 30,
                      ),
                    )),
                Spacer(),
                Text(
                  "Profile",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: InkWell(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => const Cart(),
                      //     ));
                    },
                    child: Icon(
                      Icons.logout,
                      size: 24,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: Row(
              children: [
                Container(
                  height: Get.height / 8,
                  width: Get.width / 3.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black),
                  child: Image.asset(
                      "assets/Ellipse 30.jpg", fit: BoxFit.cover),
                ),
                Column(
                  children: [
                    Text("Bruno Pham", style: TextStyle(
                        color: Color(0XFF303030),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text("bruno203@gmail.com", style: TextStyle(
                          color: Color(0XFF808080), fontSize: 14),),
                    )
                  ],
                )
              ],
            ),
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: product.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 18, top: 30),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(  index == 0 ? Order() : index == 1
                            ? Shipping()
                            : index == 2 ? Payment() : index == 3 ? Reviews() :Settings());
                        debugPrint("$index");
                      },
                      child: Container(
                        height: Get.height / 12,
                        width: Get.width / 1.1,
                        decoration: BoxDecoration(
                            color: Colors.white, borderRadius: BorderRadius
                            .circular(1)),
                        child: Row(
                          children: [

                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 20, top: 10, left: 10,),
                                  child: Text("${product[index]["text"]}",
                                      style: TextStyle(color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, top: 10),
                                  child: Text("${product[index]["text1"]}",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),),
                                )
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Icon(Icons.arrow_forward_ios_outlined),
                            )
                          ],
                        ),

                      ),
                    )
                  ],
                ),
              );
            },),

        ],
      ),
    );
  }
}
