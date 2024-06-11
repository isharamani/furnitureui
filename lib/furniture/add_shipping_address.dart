import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:furnitureui/furniture/profile.dart';
import 'package:furnitureui/furniture/shipping_addres.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {


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
          "Add shipping address",
          style: TextStyle(
              color: Color(0XFF303030),
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
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
                          Text("Full name",
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
                              hintText: "Ex: Bruno Pham",
                              hintStyle: TextStyle(
                                  fontSize: 16, color: Colors.black54)),
                        ),
                      ),
                    ],
                  )),
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
                          Text("Address",
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
                              hintText: "Ex: 25 Robert Latouche Street",
                              hintStyle: TextStyle(
                                  fontSize: 16, color: Colors.black54)),
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
                          Text("Zipcode (Postal Code)",
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
                              hintText: "Pham Cong Thanh",
                              hintStyle:
                                  TextStyle(fontSize: 16, color: Colors.black)),
                        ),
                      ),
                    ],
                  )),
              SizedBox(height: 20),
              // Container(
              //     height: Get.height / 11.5,
              //     width: Get.width / 1.1,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(5),
              //       color: Colors.black12,
              //     ),
              //     child: Column(
              //       children: [
              //         SizedBox(
              //           height: 5,
              //         ),
              //         Row(
              //           children: [
              //
              //
              //
              //
              //             SizedBox(
              //               width: 15,
              //             ),
              //             Text("Country",
              //                 style:
              //                     TextStyle(color: Colors.black54, fontSize: 12)),
              //           ],
              //         ),
              //
              //
              //         SizedBox(height: 10,),
              //         Row(
              //           children: [SizedBox(width:15),
              //             Text("Select Country",style: TextStyle(fontSize: 18,color: Colors.black38),),
              //             SizedBox(width:190),
              //             Icon(Icons.expand_more),
              //           ],
              //         )
              //       ],
              //     )),
              // SizedBox(height: 20),
              // Container(
              //     height: Get.height / 11.5,
              //     width: Get.width / 1.1,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(5),border: Border.all(color: Colors.black45),
              //       color: Colors.white,
              //     ),
              //     child: Column(
              //       children: [
              //         SizedBox(
              //           height: 5,
              //         ),
              //         Row(
              //           children: [
              //             SizedBox(
              //               width: 15,
              //             ),
              //             Text("City",
              //                 style:
              //                 TextStyle(color: Colors.black54, fontSize: 12)),
              //           ],
              //         ),
              //         SizedBox(height: 10,),
              //         Row(
              //           children: [SizedBox(width:15),
              //             Text("Select Country",style: TextStyle(fontSize: 18,color: Colors.black38),),
              //             SizedBox(width:190),
              //             Icon(Icons.expand_more),
              //           ],
              //         )
              //       ],
              //     )),
              // SizedBox(height: 20),
              // Container(
              //     height: Get.height / 11.5,
              //     width: Get.width / 1.1,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(5),
              //       color: Colors.black12,
              //     ),
              //     child: Column(
              //       children: [
              //         SizedBox(
              //           height: 5,
              //         ),
              //         Row(
              //           children: [
              //             SizedBox(
              //               width: 15,
              //             ),
              //             Text("District",
              //                 style:
              //                 TextStyle(color: Colors.black54, fontSize: 12)),
              //           ],
              //         ),
              //         SizedBox(height: 10,),
              //         Row(
              //           children: [SizedBox(width:15),
              //             Text("Select District",style: TextStyle(fontSize: 18,color: Colors.black38),),
              //             SizedBox(width:190),
              //             Icon(Icons.expand_more),
              //           ],
              //         )
              //       ],
              //     )),
              // SizedBox(height:30),
              Padding(
                padding: const EdgeInsets.only(left:19,right: 19),
                child: CSCPicker(

                  layout: Layout.vertical,
                  flagState: CountryFlag.DISABLE,
                  onCountryChanged: (country) {},
                  onStateChanged: (state) {},
                  onCityChanged: (city) {},
                  countryDropdownLabel: " Select Country",
                  stateDropdownLabel: " Select State",
                  cityDropdownLabel: "Select City",



                ),
              ),
              SizedBox(height: 20,),



              InkWell(
                onTap: () {
                  Get.to(Shipping());
                },
                child: Container(
                  height: Get.height / 15,
                  width: Get.width / 1.1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black),
                  child: Center(
                      child: Text(
                    "SAVE ADDRESS",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
