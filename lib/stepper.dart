import 'package:another_stepper/another_stepper.dart';
import 'package:flutter/material.dart';


class page extends StatefulWidget {
  const page({Key? key}) : super(key: key);

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  List<StepperData> stepperData = [
    StepperData(

        title: StepperText(
          "Order Placed",
          textStyle: const TextStyle(
            color: Colors.grey,
          ),
        ),
        subtitle: StepperText("We have received your order \n"
            "on 20 -Dec - 2019"),

        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Color(0XFFF57429),
              borderRadius: BorderRadius.all(Radius.circular(30))),
        ),

        ),
    StepperData(
        title: StepperText("Order Confimed"),
        subtitle: StepperText("We have received your order \n"
            "on 20 -Dec - 2019"),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Color(0XFFF57429),
              borderRadius: BorderRadius.all(Radius.circular(30))),

        )),
    StepperData(
        title: StepperText("Ordern Prcessed",textStyle: TextStyle(color: Colors.green)),
        subtitle: StepperText(
            "We are preparing your order",textStyle: TextStyle(color: Colors.green)),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(30))),
        )),
    StepperData(
        title: StepperText("Ready to Ship",
            textStyle: const TextStyle(color: Colors.grey)),
        subtitle: StepperText(
  "Your order is ready for shippping"),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(30))),
        )),
    StepperData(
        title: StepperText("Out for Delivery",
            textStyle: const TextStyle(color: Colors.grey)),
        subtitle: StepperText(
            "Your order is  Out for Delivery"),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(30))),
        )),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: AnotherStepper(
              stepperList: stepperData,
              stepperDirection: Axis.vertical,
              iconWidth: 40,
              iconHeight: 40,
              activeBarColor: Color(0XFFF57429),
              inActiveBarColor: Colors.grey,
              inverted: false,
              verticalGap: 30,
              activeIndex: 2,
              barThickness: 8,
            ),
          ),
        ],
      ),
    );
  }
}