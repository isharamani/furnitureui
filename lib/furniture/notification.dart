import 'package:flutter/material.dart';
import 'package:furnitureui/furniture/search_3.dart';
import 'package:get/get.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.search_rounded),
        centerTitle: true,
        title: Text( "Notification",
            style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.bold),),

      ),
      body: ListView(
        children: [


          Row(
            children: [
              Container(
                height: Get.height / 9,
                width: Get.width,
                decoration: BoxDecoration(
                  color: Color(0XFF808080),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 10.5,
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            "assets/0.jpg",
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: Text(
                                "Your order #123456789 has been confirmed",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n"
                            "Turpis pretium et in arcu adipiscing nec. Turpis pretium et\n"
                            "in arcu adipiscing nec. ",
                            style: TextStyle(fontSize: 10),
                          ),
                          Row(
                            children: [
                              SizedBox(width: 240),
                              Text(
                                "New",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                height: Get.height / 9,
                width: Get.width,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 10.5,
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            "assets/1.jpg",
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: Text(
                                "Your order #123456789 has been confirmed",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n"
                            "Turpis pretium et in arcu adipiscing nec. Turpis pretium et\n"
                            "in arcu adipiscing nec. ",
                            style: TextStyle(fontSize: 10,color: Color(0XFF808080)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                height: Get.height / 8,
                width: Get.width,
                decoration: BoxDecoration(
                  color: Color(0XFF808080),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10,right: 30),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right:100),
                        child: Text("Discover hot sale furnitures this week.",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit.Turpis pretium et in\n"
                            " arcu adipiscing nec. Turpis pretium \n"
                            "et in arcu adipiscing nec. ",
                        style: TextStyle(fontSize: 10),
                      ),
                      Row(
                        children: [
                          SizedBox(width: 240),
                          Padding(
                            padding: const EdgeInsets.only(left:90),
                            child: Text(
                              "HOT!",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0XFFEB5757)),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
          Row(
            children: [
              Container(
                height: Get.height / 9,
                width: Get.width,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 10.5,
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            "assets/0.jpg",
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: Text(
                                "Your order #123456789 has been shipped\n"
                                    "successfully",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Text(
                            "Please help us to confirm and rate your order to get 10%\n"
                                "discount code for next order. ",
                            style: TextStyle(fontSize: 10,color: Color(0XFF808080)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            height: Get.height/300,
            width: Get.width,
            decoration: BoxDecoration(color: Color(0XFFF0F0F0)),
          ),
          Row(
            children: [
              Container(
                height: Get.height / 9,
                width: Get.width,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 10.5,
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            "assets/0.jpg",
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: Text(
                                "Your order #123456789 has been confirmed",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n"
                                "Turpis pretium et in arcu adipiscing nec. Turpis pretium et\n"
                                "in arcu adipiscing nec. ",
                            style: TextStyle(fontSize: 10,color: Color(0XFF808080)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            height: Get.height/300,
            width: Get.width,
            decoration: BoxDecoration(color: Color(0XFFF0F0F0)),
          ),
          Row(
            children: [
              Container(
                height: Get.height / 9,
                width: Get.width,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 10.5,
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            "assets/4.jpg",
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: Text(
                                "Your order #123456789 has been canceled",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n"
                                "Turpis pretium et in arcu adipiscing nec. Turpis pretium et\n"
                                "in arcu adipiscing nec. ",
                            style: TextStyle(fontSize: 10,color: Color(0XFF808080)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            height: Get.height/300,
            width: Get.width,
            decoration: BoxDecoration(color: Color(0XFFF0F0F0)),
          ),
          Row(
            children: [
              Container(
                height: Get.height / 9,
                width: Get.width,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 10.5,
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            "assets/0.jpg",
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: Text(
                                "Your order #123456789 has been shipped\n"
                                    "successfully",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Text(
                            "Please help us to confirm and rate your order to get 10% \n"
                                "discount code for next order.",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            height: Get.height/300,
            width: Get.width,
            decoration: BoxDecoration(color: Color(0XFFF0F0F0)),
          ),
          Row(
            children: [
              Container(
                height: Get.height / 9,
                width: Get.width,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 10.5,
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            "assets/2.jpg",
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: Text(
                                "Your order #123456789 has been confirmed",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n"
                                "Turpis pretium et in arcu adipiscing nec. Turpis pretium et\n"
                                "in arcu adipiscing nec. ",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
