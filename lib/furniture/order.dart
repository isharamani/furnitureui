import 'package:flutter/material.dart';
import 'package:furnitureui/furniture/profile.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Home.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}


class _OrderState extends State<Order> {
  int _selectedTab = 0;

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.to(Profile());
          },
          child: Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
        ),
        centerTitle: true,
        title: Text(
          "My order",
          style: TextStyle(
              color: Color(0XFF303030),
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: GestureDetector(
                      onTap: () {
                        _selectedTab = 0;
                        setState(() {});
                      },
                      child: Text("Delivered",
                          style: TextStyle(
                              color: _selectedTab == 0
                                  ? Colors.black
                                  : Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      _selectedTab = 1;
                      setState(() {});
                    },
                    child: Text(
                      "Processing",
                      style: TextStyle(
                          color: _selectedTab == 1 ? Colors.black : Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      onTap: () {
                        _selectedTab = 2;
                        setState(() {});
                      },
                      child: Text("Canceled",
                          style: TextStyle(
                              color: _selectedTab == 2
                                  ? Colors.black
                                  : Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Get.height / 25),
            Container(
              height: Get.height / 5.4,
              width: Get.width / 1.1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(7),
                      topRight: Radius.circular(7),
                      bottomRight: Radius.circular(7),
                      bottomLeft: Radius.circular(7)),
                  color: Colors.white),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Row(
                      children: [
                        Text(
                          "Order No238562312",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0XFF303030)),
                        ),
                        Spacer(),
                        Text(
                          "20/03/2020",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: Get.height / 400,
                    width: Get.width,
                    color: Colors.black12,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Row(
                      children: [
                        Text(
                          "Quantity:",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.grey),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "03",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0XFF303030)),
                        ),
                        Spacer(),
                        Text(
                          "Total Amount: ",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        Text(
                          "\$150 ",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18),
                    child: Row(
                      children: [
                        Container(
                          height: Get.height / 20,
                          width: Get.width / 4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(7),
                                bottomRight: Radius.circular(7),
                              ),
                              color: Colors.black),
                          child: Center(
                              child: Text("Detail",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16))),
                        ),
                        Spacer(),
                        Text(
                          "Delivered",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.green,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: Get.height / 5.4,
              width: Get.width / 1.1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(7),
                      topRight: Radius.circular(7),
                      bottomRight: Radius.circular(7),
                      bottomLeft: Radius.circular(7)),
                  color: Colors.white),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Row(
                      children: [
                        Text(
                          "Order No238562312",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0XFF303030)),
                        ),
                        Spacer(),
                        Text(
                          "20/03/2020",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: Get.height / 400,
                    width: Get.width,
                    color: Colors.black12,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Row(
                      children: [
                        Text(
                          "Quantity:",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.grey),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "03",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0XFF303030)),
                        ),
                        Spacer(),
                        Text(
                          "Total Amount: ",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        Text(
                          "\$150 ",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18),
                    child: Row(
                      children: [
                        Container(
                          height: Get.height / 20,
                          width: Get.width / 4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(7),
                                bottomRight: Radius.circular(7),
                              ),
                              color: Colors.black),
                          child: Center(
                              child: Text("Detail",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16))),
                        ),
                        Spacer(),
                        Text(
                          "Delivered",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.green,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: Get.height / 5.4,
              width: Get.width / 1.1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(7),
                      topRight: Radius.circular(7),
                      bottomRight: Radius.circular(7),
                      bottomLeft: Radius.circular(7)),
                  color: Colors.white),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Row(
                      children: [
                        Text(
                          "Order No238562312",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0XFF303030)),
                        ),
                        Spacer(),
                        Text(
                          "20/03/2020",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: Get.height / 400,
                    width: Get.width,
                    color: Colors.black12,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Row(
                      children: [
                        Text(
                          "Quantity:",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.grey),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "03",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0XFF303030)),
                        ),
                        Spacer(),
                        Text(
                          "Total Amount: ",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        Text(
                          "\$150 ",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18),
                    child: Row(
                      children: [
                        Container(
                          height: Get.height / 20,
                          width: Get.width / 4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(7),
                                bottomRight: Radius.circular(7),
                              ),
                              color: Colors.black),
                          child: Center(
                              child: Text("Detail",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16))),
                        ),
                        Spacer(),
                        Text(
                          "Delivered",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.green,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: Get.height / 5.4,
              width: Get.width / 1.1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(7),
                      topRight: Radius.circular(7),
                      bottomRight: Radius.circular(7),
                      bottomLeft: Radius.circular(7)),
                  color: Colors.white),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Row(
                      children: [
                        Text(
                          "Order No238562312",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0XFF303030)),
                        ),
                        Spacer(),
                        Text(
                          "20/03/2020",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: Get.height / 400,
                    width: Get.width,
                    color: Colors.black12,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Row(
                      children: [
                        Text(
                          "Quantity:",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.grey),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "03",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0XFF303030)),
                        ),
                        Spacer(),
                        Text(
                          "Total Amount: ",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        Text(
                          "\$150 ",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18),
                    child: Row(
                      children: [
                        Container(
                          height: Get.height / 20,
                          width: Get.width / 4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(7),
                                bottomRight: Radius.circular(7),
                              ),
                              color: Colors.black),
                          child: Center(
                              child: Text("Detail",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16))),
                        ),
                        Spacer(),
                        Text(
                          "Delivered",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.green,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: Get.height / 5.4,
              width: Get.width / 1.1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(7),
                      topRight: Radius.circular(7),
                      bottomRight: Radius.circular(7),
                      bottomLeft: Radius.circular(7)),
                  color: Colors.white),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Row(
                      children: [
                        Text(
                          "Order No238562312",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0XFF303030)),
                        ),
                        Spacer(),
                        Text(
                          "20/03/2020",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: Get.height / 400,
                    width: Get.width,
                    color: Colors.black12,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Row(
                      children: [
                        Text(
                          "Quantity:",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.grey),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "03",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0XFF303030)),
                        ),
                        Spacer(),
                        Text(
                          "Total Amount: ",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        Text(
                          "\$150 ",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18),
                    child: Row(
                      children: [
                        Container(
                          height: Get.height / 20,
                          width: Get.width / 4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(7),
                                bottomRight: Radius.circular(7),
                              ),
                              color: Colors.black),
                          child: Center(
                              child: Text("Detail",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16))),
                        ),
                        Spacer(),
                        Text(
                          "Delivered",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.green,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
