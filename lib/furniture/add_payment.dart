import 'package:flutter/material.dart';
import 'package:furnitureui/furniture/payment_method.dart';
import 'package:furnitureui/furniture/profile.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AddPayment extends StatefulWidget {
  const AddPayment({super.key});

  @override
  State<AddPayment> createState() => _AddPaymentState();
}

class _AddPaymentState extends State<AddPayment> {
  TextEditingController datepickerCOntroller = TextEditingController();
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
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
          "Add payment method",
          style: TextStyle(
              color: Color(0XFF303030),
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(scrollDirection:Axis.vertical ,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, ),
              child: Image.asset("assets/5.jpg"),
            ),
            SizedBox(height: 20),
            Container(
                height: Get.height / 11.5,
                width: Get.width / 1.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.black12,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Text("CardHolder Name",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 12)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(5),
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            hintText: "Ex:Bruno Pham",
                            hintStyle:
                                TextStyle(fontSize: 16, color: Colors.black54)),
                      ),
                    ),
                  ],
                )),
            SizedBox(height: 20),
            Container(
                height: Get.height / 11,
                width: Get.width / 1.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black45),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Text("Card Number",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 12)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(5),
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            hintText: "**** **** **** 3456",
                            hintStyle:
                                TextStyle(fontSize: 16, color: Colors.black87)),
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Row(
                children: [
                  Container(
                      height: Get.height / 11.5,
                      width: Get.width / 2.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.black12,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 15,
                              ),
                              Text("CVV",
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 12)),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(5),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  hintText: "Ex: 123",
                                  hintStyle: TextStyle(
                                      fontSize: 16, color: Colors.black54)),
                            ),
                          ),
                        ],
                      )),
                  Spacer(),
                  InkWell(
                    onTap: () {
                       _selectDate(context);
                    },
                    child: Container(
                        height: Get.height / 11.5,
                        width: Get.width / 2.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black45),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width:40,
                                ),
                                Text("Expiration Date",
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 12)),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:06),
                              child: Text('${selectedDate}'.toString().split(" ")[0]),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 180),
            InkWell(
              onTap: () {
                Get.to(Payment());
              },
              child: Container(
                height: Get.height / 15,
                width: Get.width / 1.1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: Colors.black),
                child: Center(
                    child: Text(
                  "ADD NEW CARD",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
