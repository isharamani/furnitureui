import 'package:flutter/material.dart';
import 'package:furnitureui/furniture/Home.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'check_out.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  List Product = [
    {
      "image": "assets/2.jpg",
      "text": "Minimal Stand",
      "price": "\$ 25.00",
      "qty": 1,
      "icon": Icons.cancel_outlined
    },
    {
      "image": "assets/0.jpg",
      "text": "Coffee Table",
      "price": "\$ 20.00",
      "qty": 1,
      "icon": Icons.cancel_outlined
    },
    {
      "image": "assets/4.jpg",
      "text": "Minimal Desk",
      "price": "\$ 50.00",
      "qty": 1,
      "icon": Icons.cancel_outlined
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My cart",
          style: TextStyle(
              color: Color(0XFF303030),
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [

          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: Product.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 20),
                        child: Container(
                          height: MediaQuery.of(context!).size.height / 8,
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: ClipRRect(
                              borderRadius:
                                  BorderRadiusDirectional.circular(20),
                              child: Image.asset(
                                "${Product[index]["image"]}",
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30, top: 20),
                            child: Text(
                              "${Product[index]["text"]}",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                              "${Product[index]["price"]}",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, top: 25),
                            child: Row(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 22,
                                  width: MediaQuery.of(context).size.width / 12,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(17),
                                  ),
                                  child: FloatingActionButton(
                                    backgroundColor: Colors.white60,
                                    onPressed: () {
                                      Product[index]["qty"]++;
                                      // debugPrint("value is first container is = $counter1");
                                      setState(() {});
                                    },
                                    tooltip: "Increment",
                                    child: const Icon(Icons.add,
                                        color: Colors.black),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 20, left: 20),
                                  child: Text("${Product[index]["qty"]}",
                                      style: const TextStyle(fontSize: 30)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.height / 22,
                                    width:
                                        MediaQuery.of(context).size.width / 12,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17),
                                    ),
                                    child: FloatingActionButton(
                                      backgroundColor: Colors.white60,
                                      onPressed: () {
                                        // debugPrint("value is first container is = $counter1");
                                        if (Product[index]["qty"] > 1) {
                                          Product[index]["qty"]--;
                                        }

                                        setState(() {});
                                      },
                                      child: const Icon(Icons.remove,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 10, bottom: 50),
                        child: InkWell(
                          onTap: () {
                            Product.removeAt(index);
                            setState(() {});
                          },
                          child: Icon(
                            Product[index]["icon"],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 60),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.white,
                      style: BorderStyle.solid,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.white,
                      style: BorderStyle.solid,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Enter your promo code",
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 1),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 14.1,
                      width: MediaQuery.of(context).size.width / 7,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black),
                      child: Icon(Icons.arrow_forward_ios, color: Colors.white),
                    ),
                  )),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Text(
                  "Total:",
                  style: TextStyle(
                      color: Color(0XFF808080),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(width: 230),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: Text(
                  "\$ 95.00",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0XFF303030)),
                ),
              )
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Get.to(CheckOut());
                },
                child: Container(
                  height: MediaQuery.of(context).size.height / 15,
                  width: MediaQuery.of(context).size.width / 1.1,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text("Check out",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold))),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Padding commonbox(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
      child: Container(
        height: MediaQuery.of(context).size.height / 300,
        width: MediaQuery.of(context).size.width / 1.1,
        decoration: BoxDecoration(
          color: Colors.black12,
        ),
      ),
    );
  }

  Row designcommon(
      {BuildContext? context,
      color,
      String? text,
      text1,
      String? counterText,
      text2,
      botton1,
      botton2}) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 30),
          child: Container(
            height: MediaQuery.of(context!).size.height / 8,
            width: MediaQuery.of(context).size.width / 4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: color),
            child: ClipRRect(
                borderRadius: BorderRadiusDirectional.circular(20),
                child: Image.asset(
                  text!,
                  fit: BoxFit.cover,
                )),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Text(
                text1,
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                text2,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 25),
              child: Row(
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height / 22,
                      width: MediaQuery.of(context).size.width / 12,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: botton1),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: Text(counterText!,
                        style: const TextStyle(fontSize: 30)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 22,
                      width: MediaQuery.of(context).size.width / 12,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: botton2,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 10, bottom: 50),
          child: Icon(
            Icons.cancel_outlined,
            size: 30,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
