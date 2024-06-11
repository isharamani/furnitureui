import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:furnitureui/furniture/search_3.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'addtocart.dart';
import 'cart.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  int selectedName = 0;

  List Catagaries = [
    {"icon": Icons.star, "name": "Popular"},
    {"icon": Icons.chair, "name": "Chair"},
    {"icon": Icons.table_bar, "name": "Table"},
    {"icon": Icons.chair_outlined, "name": "Armchair"},
    {"icon": Icons.bed, "name": "Bed"},
    {"icon": Icons.light, "name": "Lamb"},
  ];

  List Product = [
    {"text": "Black Simple Lamp", "price": "\$ 12.00", "pic": "assets/1.jpg"},
    {"text": "Minimal Stand", "price": "\$ 25.00", "pic": "assets/2.jpg"},
    {"text": "Coffee Chair", "price": "\$ 20.00", "pic": "assets/Mask Group.jpg"},
    {"text": "Simple Desk", "price": "\$ 50.00", "pic": "assets/4.jpg"},
    {"text": "Black Simple Lamp", "price": "\$ 12.00", "pic": "assets/1.jpg"},
    {"text": "Minimal Stand", "price": "\$ 25.00", "pic": "assets/2.jpg"},
    {"text": "Coffee Chair", "price": "\$ 20.00", "pic": "assets/Mask Group.jpg"},
    {"text": "Simple Desk", "price": "\$ 50.00", "pic": "assets/4.jpg"},
    {"text": "Black Simple Lamp", "price": "\$ 12.00", "pic": "assets/1.jpg"},
    {"text": "Minimal Stand", "price": "\$ 25.00", "pic": "assets/2.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(scrollDirection:Axis.vertical ,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 10, top: 20),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Text(
                          "Make home",
                          style:
                              TextStyle(color: Color(0XFF909090), fontSize: 18),
                        ),
                        Text(
                          "BEAUTIFUL",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: InkWell(
                      onTap: () {
                       Get.to(Cart());
                      },
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        size: 24,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                height: 100,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ListView.builder(
                        itemCount: Catagaries.length,
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    selectedName = index;
                                    debugPrint("index$index");
                                    debugPrint("selectedName$selectedName");
                                    setState(() {});
                                  },
                                  child: Container(
                                    height:50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: index == selectedName
                                                ? Colors.black
                                                : Colors.black12)
                                      ],
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Icon(
                                      Catagaries[index]["icon"],
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text("${Catagaries[index]["name"]}"),
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ],

                  ),

                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: InkWell(
                  onTap: () {
                   Get.to(ADDTOCART());
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width / 1,
                    child: GridView.builder(
                      itemCount: Product.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 20,
                        crossAxisCount: 2,
                        mainAxisExtent: 280,
                      ),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 4,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: Image.asset("${Product[index]["pic"]}"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 5),
                              child: Row(
                                children: [
                                  Text("${Product[index]["text"]}"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 5),
                              child: Row(
                                children: [
                                  Text(
                                    "${Product[index]["price"]}",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )
                          ],
                        );
                      },
                    ),

                  ),
                ),
              ),
              SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    );
  }
}
