import 'package:flutter/material.dart';
import 'package:furnitureui/furniture/Home.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'bottom-bar.dart';
import 'cart.dart';
import 'favorite.dart';

class ADDTOCART extends StatefulWidget {
  const ADDTOCART({super.key});

  @override
  State<ADDTOCART> createState() => _ADDTOCARTState();
}

class _ADDTOCARTState extends State<ADDTOCART> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(alignment: Alignment.topRight, children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 101),
                    child: Image.asset("assets/tools.jpg",
                        height: 500, width: 500),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 200, bottom: 300, top: 20),
                    child: InkWell(
                      onTap: () {
                       Get.to(BottomBar());
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 200, top: 60),
                    child: Container(
                      height: 180,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 17),
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.black12),
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.black12),
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Color(0XFFB4916C)),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.black12),
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Color(0XFFE4CBAD)),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  "Minimal Stand",
                  style: TextStyle(
                      color: Color(0XFF303030),
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  "\$ 50",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color(0XFF303030)),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Container(
                  height: MediaQuery.of(context).size.height / 22,
                  width: MediaQuery.of(context).size.width / 12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: FloatingActionButton(
                    backgroundColor: Colors.white60,
                    onPressed: incrementCounter,
                    tooltip: "Increment",
                    child: const Icon(Icons.add, color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text("${counter}", style: const TextStyle(fontSize: 30)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height / 22,
                  width: MediaQuery.of(context).size.width / 12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: FloatingActionButton(
                    backgroundColor: Colors.white60,
                    onPressed: () {
                      if(counter>0){
                        counter--;
                      }

                      setState(() {});
                    },
                    child: const Icon(Icons.remove, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Text(
                  "4.5",
                  style: TextStyle(
                      color: Color(0XFF303030),
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Text(
                  "(50 reviews)",
                  style: TextStyle(color: Color(0XFF808080), fontSize: 16),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only( top: 30),
            child: Text(
              "Minimal Stand is made of by natural wood. The \n"
              "design that is very simple and minimal. This is truly \n"
              "one of the best furnitures in any family for now. With \n"
              "3 different colors, you can easily select the best\n"
              " match for your home. ",
              style: TextStyle(color: Color(0XFF606060), fontSize: 14),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 60),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Favorite(),
                        ));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 15,
                    width: MediaQuery.of(context).size.width / 7,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black12),
                    child: Icon(Icons.bookmark_border_sharp,
                        color: Colors.black, size: 40),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: InkWell(
                    onTap: () {
                      Get.to(Cart());
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black),
                      child: Center(
                          child: Text("Add to cart",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20))),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
