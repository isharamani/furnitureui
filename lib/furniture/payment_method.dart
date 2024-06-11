import 'package:flutter/material.dart';
import 'package:furnitureui/furniture/profile.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'add_payment.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  bool isChecked1 = false;
  bool isChecked2 = false;



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
          "Payment method",
          style: TextStyle(
              color: Color(0XFF303030),
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
      ),
      body:
      Column(
        children: [
          Image.asset(
            "assets/master card.png",
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
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
                "Use as default payment method",
                style: TextStyle(color: Color(0XFF222222), fontSize: 14),
              )
            ],
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Image.asset("assets/Payment card1.jpg", height: 200),
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
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
                "Use as default payment method",
                style: TextStyle(color: Color(0XFF222222), fontSize: 14),
              )
            ],
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: ClipRRect(
        borderRadius: BorderRadiusDirectional.circular(50),
        child: InkWell(
          onTap: () {
            Get.to(AddPayment());
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
