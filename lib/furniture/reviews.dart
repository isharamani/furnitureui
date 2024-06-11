import 'package:flutter/material.dart';
import 'package:furnitureui/furniture/profile.dart';
import 'package:furnitureui/furniture/search_3.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Reviews extends StatefulWidget {
  const Reviews({super.key});

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  var color1 = Colors.grey;
  var color2 = Colors.grey;
  var color3 = Colors.grey;
  var color4 = Colors.grey;
  var color5 = Colors.grey;
  var color6 = Colors.grey;
  var color7 = Colors.grey;
  var color8 = Colors.grey;
  var color9 = Colors.grey;
  var color10 = Colors.grey;
  var color11 = Colors.grey;
  var color12 = Colors.grey;
  var color13 = Colors.grey;
  var color14 = Colors.grey;
  var color15 = Colors.grey;

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
        title:Text(
          "My reviews",
          style: TextStyle(
              color: Color(0XFF303030),
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left:20),
          child: Column(
            children: [
              Container(
                height: Get.height / 2.7,
                width: Get.width / 1.1,
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: Get.height / 10,
                            width: Get.width / 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: ClipRRect(
                                borderRadius:
                                    BorderRadiusDirectional.circular(10),
                                child: Image.asset(
                                  "assets/0.jpg",
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom:10),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    "Coffee Table",
                                    style: TextStyle(
                                        color: Color(0XFF606060),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Text("\$ 50.00",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.black,
                                      )),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 20),
                        child: Row(
                          children: [
                            InkWell(
                                onTap: () {
                                  color1 = Colors.amber;
                                  color2 = Colors.grey;
                                  color3 = Colors.grey;
                                  color4 = Colors.grey;
                                  color5 = Colors.grey;
                                  setState(() {});
                                },
                                child: Icon(
                                  Icons.star,
                                  color: color1,
                                )),
                            InkWell(
                                onTap: () {
                                  color1 = Colors.amber;
                                  color2 = Colors.amber;
                                  color3 = Colors.grey;
                                  color4 = Colors.grey;
                                  color5 = Colors.grey;
                                  setState(() {});
                                },
                                child: Icon(Icons.star, color: color2)),
                            InkWell(
                                onTap: () {
                                  color1 = Colors.amber;
                                  color2 = Colors.amber;
                                  color3 = Colors.amber;
                                  color4 = Colors.grey;
                                  color5 = Colors.grey;
                                  setState(() {});
                                },
                                child: Icon(Icons.star, color: color3)),
                            InkWell(
                                onTap: () {
                                  color1 = Colors.amber;
                                  color2 = Colors.amber;
                                  color3 = Colors.amber;
                                  color4 = Colors.amber;
                                  color5 = Colors.grey;
                                  setState(() {});
                                },
                                child: Icon(Icons.star, color: color4)),
                            InkWell(
                                onTap: () {
                                  color1 = Colors.amber;
                                  color2 = Colors.amber;
                                  color3 = Colors.amber;
                                  color4 = Colors.amber;
                                  color5 = Colors.amber;
                                  setState(() {});
                                },
                                child: Icon(Icons.star, color: color5)),
                            Spacer(),
                            Text(
                              "20/03/2020",
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 40, top: 10),
                        child: Text(
                            "Nice Furniture with good delivery. The delivery\n"
                            "time is very fast. Then products look like exactly\n"
                            "the picture in the app. Besides, color is also the\n"
                            "same and quality is very good despite very\n"
                            "cheap price",
                            style:
                                TextStyle(color: Colors.black87, fontSize: 14)),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: Get.height / 2.7,
                width: Get.width / 1.1,
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: Get.height / 10,
                            width: Get.width / 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: ClipRRect(
                                borderRadius:
                                    BorderRadiusDirectional.circular(10),
                                child: Image.asset(
                                  "assets/0.jpg",
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  "Coffee Table",
                                  style: TextStyle(
                                      color: Color(0XFF606060),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Text("\$ 50.00",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.black,
                                    )),
                              ),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 20),
                        child: Row(
                          children: [
                            InkWell(
                                onTap: () {
                                  color6 = Colors.amber;
                                  color7 = Colors.grey;
                                  color8 = Colors.grey;
                                  color9 = Colors.grey;
                                  color10 = Colors.grey;
                                  setState(() {});
                                },
                                child: Icon(
                                  Icons.star,
                                  color: color6,
                                )),
                            InkWell(
                                onTap: () {
                                  color6 = Colors.amber;
                                  color7 = Colors.amber;
                                  color8 = Colors.grey;
                                  color9 = Colors.grey;
                                  color10 = Colors.grey;
                                  setState(() {});
                                },
                                child: Icon(Icons.star, color: color7)),
                            InkWell(
                                onTap: () {
                                  color6 = Colors.amber;
                                  color7 = Colors.amber;
                                  color8 = Colors.amber;
                                  color9 = Colors.grey;
                                  color10 = Colors.grey;
                                  setState(() {});
                                },
                                child: Icon(Icons.star, color: color8)),
                            InkWell(
                                onTap: () {
                                  color6 = Colors.amber;
                                  color7 = Colors.amber;
                                  color8 = Colors.amber;
                                  color9 = Colors.amber;
                                  color10 = Colors.grey;
                                  setState(() {});
                                },
                                child: Icon(Icons.star, color: color9)),
                            InkWell(
                                onTap: () {
                                  color6 = Colors.amber;
                                  color7 = Colors.amber;
                                  color8 = Colors.amber;
                                  color9 = Colors.amber;
                                  color10 = Colors.amber;
                                  setState(() {});
                                },
                                child: Icon(Icons.star, color: color10)),
                            Spacer(),
                            Text(
                              "20/03/2020",
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 40, top: 10),
                        child: Text(
                            "Nice Furniture with good delivery. The delivery\n"
                            "time is very fast. Then products look like exactly\n"
                            "the picture in the app. Besides, color is also the\n"
                            "same and quality is very good despite very\n"
                            "cheap price",
                            style:
                                TextStyle(color: Colors.black87, fontSize: 14)),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: Get.height / 2.7,
                width: Get.width / 1.1,
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: Get.height / 10,
                            width: Get.width / 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: ClipRRect(
                                borderRadius:
                                    BorderRadiusDirectional.circular(10),
                                child: Image.asset(
                                  "assets/0.jpg",
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  "Coffee Table",
                                  style: TextStyle(
                                      color: Color(0XFF606060),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Text("\$ 50.00",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.black,
                                    )),
                              ),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 20),
                        child: Row(
                          children: [
                            InkWell(
                                onTap: () {
                                  color11 = Colors.amber;
                                  color12 = Colors.grey;
                                  color13 = Colors.grey;
                                  color14 = Colors.grey;
                                  color15 = Colors.grey;
                                  setState(() {});
                                },
                                child: Icon(
                                  Icons.star,
                                  color: color11,
                                )),
                            InkWell(
                                onTap: () {
                                  color11 = Colors.amber;
                                  color12 = Colors.amber;
                                  color13 = Colors.grey;
                                  color14 = Colors.grey;
                                  color15 = Colors.grey;
                                  setState(() {});
                                },
                                child: Icon(Icons.star, color: color12)),
                            InkWell(
                                onTap: () {
                                  color11 = Colors.amber;
                                  color12 = Colors.amber;
                                  color13 = Colors.amber;
                                  color14 = Colors.grey;
                                  color15 = Colors.grey;
                                  setState(() {});
                                },
                                child: Icon(Icons.star, color: color13)),
                            InkWell(
                                onTap: () {
                                  color11 = Colors.amber;
                                  color12 = Colors.amber;
                                  color13 = Colors.amber;
                                  color14 = Colors.amber;
                                  color15 = Colors.grey;
                                  setState(() {});
                                },
                                child: Icon(Icons.star, color: color14)),
                            InkWell(
                                onTap: () {
                                  color11 = Colors.amber;
                                  color12 = Colors.amber;
                                  color13 = Colors.amber;
                                  color14 = Colors.amber;
                                  color15 = Colors.amber;
                                  setState(() {});
                                },
                                child: Icon(Icons.star, color: color15)),
                            Spacer(),
                            Text(
                              "20/03/2020",
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 40, top: 10),
                        child: Text(
                            "Nice Furniture with good delivery. The delivery\n"
                            "time is very fast. Then products look like exactly\n"
                            "the picture in the app. Besides, color is also the\n"
                            "same and quality is very good despite very\n"
                            "cheap price",
                            style:
                                TextStyle(color: Colors.black87, fontSize: 14)),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
