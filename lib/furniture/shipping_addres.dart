import 'package:flutter/material.dart';
import 'package:furnitureui/furniture/payment_method.dart';
import 'package:furnitureui/furniture/profile.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'add_shipping_address.dart';

class Shipping extends StatefulWidget {
  const Shipping({super.key});

  @override
  State<Shipping> createState() => _ShippingState();
}

class _ShippingState extends State<Shipping> {


  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;


  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
        MaterialState.selected,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.black;
      }
      return Colors.white;
    }

    return Scaffold(
      appBar: AppBar(
        leading:InkWell(
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
          "Shipping address",
          style: TextStyle(
              color: Color(0XFF303030),
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(scrollDirection:Axis.vertical ,
        child: Column(
          children: [

            // SizedBox(
            //   height: 20,
            // ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Transform.scale(
                  scale: 1.3,
                  child: Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked1,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked1 = value!;
                      });
                    },
                  ),
                ),
                Text(
                  "Use as the shipping address",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            Container(
              height: Get.height /5.5,
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
                    padding: const EdgeInsets.only(right:20, top: 10,left: 15),
                    child: Row(
                      children: [
                        Text(
                          "Bruno Fernandes",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0XFF303030)),
                        ),
                        Spacer(),
                        Icon(Icons.border_color_outlined)
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
                  TextFormField(
                    maxLines: 2,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: "25 rue Robert Latouche, Nice, 06200, Côte\n"
                          " D’azur, France",
                    ),
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Transform.scale(
                  scale: 1.3,
                  child: Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked2,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked2 = value!;
                      });
                    },
                  ),
                ),
                Text(
                  "Use as the shipping address",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            Container(
              height: Get.height /5.5,
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
                    padding: const EdgeInsets.only(right:20, top: 10,left: 15),
                    child: Row(
                      children: [
                        Text(
                          "Bruno Fernandes",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0XFF303030)),
                        ),
                        Spacer(),
                        Icon(Icons.border_color_outlined)
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
                  TextFormField(
                    maxLines: 2,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: "25 rue Robert Latouche, Nice, 06200, Côte\n"
                          " D’azur, France",
                    ),
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Transform.scale(
                  scale: 1.3,
                  child: Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked3,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked3 = value!;
                      });
                    },
                  ),
                ),
                Text(
                  "Use as the shipping address",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            Container(
              height: Get.height /5.5,
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
                    padding: const EdgeInsets.only(right:20, top: 10,left: 15),
                    child: Row(
                      children: [
                        Text(
                          "Bruno Fernandes",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0XFF303030)),
                        ),
                        Spacer(),
                        Icon(Icons.border_color_outlined)
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
                  TextFormField(
                    maxLines: 2,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: "25 rue Robert Latouche, Nice, 06200, Côte\n"
                          " D’azur, France",
                    ),
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Transform.scale(
                  scale: 1.3,
                  child: Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked4,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked4 = value!;
                      });
                    },
                  ),
                ),
                Text(
                  "Use as the shipping address",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            Container(
              height: Get.height /5.5,
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
                    padding: const EdgeInsets.only(right:20, top: 10,left: 15),
                    child: Row(
                      children: [
                        Text(
                          "Bruno Fernandes",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0XFF303030)),
                        ),
                        Spacer(),
                        Icon(Icons.border_color_outlined)
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
                  TextFormField(
                    maxLines: 2,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: "25 rue Robert Latouche, Nice, 06200, Côte\n"
                          " D’azur, France",
                    ),
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
            ),

          ],
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: ClipRRect(
        borderRadius: BorderRadiusDirectional.circular(50),
        child: InkWell(
          onTap: () {

            Get.to(Address());
          },
          child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(color: Colors.white),
              child: Icon(Icons.add, size: 30)),
        ),
      ),
    );
  }
}
