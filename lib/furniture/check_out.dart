import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'congrets.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {

 List<String> list = <String>['Fast (1-2days)', 'Fast (2-3days)', 'Fast (3-4days)', 'Fast (one week)'];
  String dropdownValue ="Fast (1-2days)";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(scrollDirection:Axis.vertical ,
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(left: 20, top: 50),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                  ),
                  SizedBox(width: 130),
                  Text(
                    "Check out",
                    style: TextStyle(
                        color: Color(0XFF303030),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: [
                  Text(
                    "Shipping Address",
                    style: TextStyle(
                        color: Color(0XFF909090),
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Icon(
                      Icons.border_color_outlined,
                      color: Colors.black,
                      size: 25,
                    ),
                  )
                ],
              ),
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
                    padding: const EdgeInsets.only(right: 190, top: 10),
                    child: Text(
                      "Bruno Fernandes",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0XFF303030)),
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
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: [
                  Text(
                    "Payment",
                    style: TextStyle(
                        color: Color(0XFF909090),
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Icon(
                      Icons.border_color_outlined,
                      color: Colors.black54,
                      size: 25,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:15),
              child: Container(
                height: Get.height/10,
                width: Get.width/1.1,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white),
                child: Row(
                  children: [Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image.asset("assets/mastercard.jpg",height: 50,width: 50,),
                  ),SizedBox(width: 5,),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderSide: BorderSide.none),
                          hintText: "**** **** **** 3947",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: [
                  Text(
                    "Delivery method",
                    style: TextStyle(
                        color: Color(0XFF909090),
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Icon(
                      Icons.border_color_outlined,
                      color: Colors.black54,
                      size: 25,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:15),
              child: Container(
                height: Get.height/15,
                width: Get.width/1.1,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white),
                child: Row(
                  children: [Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image.asset("assets/dhl.jpg",height: 50,width: 50,),
                  ),SizedBox(width: 10),
                    DropdownButton<String>(
                      value: dropdownValue,
                      // icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.black),

                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          dropdownValue = value!;
                        });
                      },
                      items: list.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height:30),
            Container(
              height: Get.height/7,
              width: Get.width/1.1,
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5),),
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Order: ",style: TextStyle(color:Color(0XFF909090),fontSize: 18),),
                        Spacer(),
                        Text("\$ 95.00",style: TextStyle(fontSize: 18,color:Colors.black87  ),)
                      ],
                    ),
                    SizedBox(height:10),
                    Row(
                      children: [
                        Text("Delivery:: ",style: TextStyle(color:Color(0XFF909090),fontSize: 18),),
                        Spacer(),
                        Text("\$ 5.00",style: TextStyle(fontSize: 18,color:Colors.black87  ),)
                      ],
                    ),
                    SizedBox(height:10),
                    Row(
                      children: [
                        Text("Total:: ",style: TextStyle(color:Color(0XFF909090),fontSize: 18),),
                        Spacer(),
                        Text("\$ 100.00",style: TextStyle(fontSize: 18,color:Colors.black87  ),)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height:20),
            InkWell(
              onTap: () {
                Get.to(Congrets());
              },
              child: Container(
                height: Get.height/15,
                width: Get.width/1.1,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.black),
                child: Center(child: Text("SUBMIT ORDER",style: TextStyle(color: Colors.white,fontSize: 20),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
