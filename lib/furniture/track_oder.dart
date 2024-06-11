import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'congrets.dart';

class Track extends StatefulWidget {
  const Track({super.key});

  @override
  State<Track> createState() => _TrackState();
}

class _TrackState extends State<Track> {
  var color1 = Colors.blueGrey;
  var color2 = Colors.blueGrey;
  var color3 = Colors.blueGrey;
  var color4 = Colors.blueGrey;
  var color5 = Colors.blueGrey;
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(Congrets());
                  },
                  child: Icon(
                    Icons.arrow_back_outlined,
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Icon(
                    Icons.search_rounded,
                    color: Color(0XFF808080),
                  ),
                ),
                Icon(
                  Icons.shopping_bag_outlined,
                  color: Color(0XFF808080),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: Row(
              children: [
                Text(
                  "Track Orders",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0XFF707070),
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              height: Get.height / 1.2,
              width: Get.width / 1.1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  // bottomRight: Radius.circular(7),
                  // bottomLeft: Radius.circular(7)),
                  color: Colors.white),
              child: SingleChildScrollView(scrollDirection:Axis.vertical ,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 5),
                      child: Row(
                        children: [
                          Text(
                            "Order#: 999012",
                            style: TextStyle(
                                color: Color(0XFF757575),
                                fontWeight: FontWeight.w700,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: Get.height / 300,
                      width: Get.width,
                      decoration: BoxDecoration(color: Color(0XFFEFEFEF)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                            " Simple  Desk\n \$50.00",
                            style: TextStyle(
                                color: Color(0XFF707070),
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Image.asset("assets/Mask Group (2) 1.jpg",
                              height: 130, width: 130),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Text(
                            "Rating",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Color(0XFFC6C6C6)),
                          ),
                        ),
                        Spacer(),
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
                            child: Padding(
                              padding: const EdgeInsets.only(right:15),
                              child: Icon(Icons.star, color: color5),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: Get.height / 300,
                      width: Get.width,
                      decoration: BoxDecoration(color: Color(0XFFEFEFEF)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Row(
                        children: [
                          Text(
                            "Track Orders",
                            style: TextStyle(
                                color: Color(0XFF707070),
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(color: Colors.white),
                                child: Icon(
                                  Icons.expand_less,
                                  color: Colors.black,
                                )),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:20),
                      child: AnotherStepper(
                        stepperList: stepperData,
                        stepperDirection: Axis.vertical,
                        iconWidth: 40,
                        iconHeight: 40,
                        activeBarColor: Color(0XFFF57429),
                        inActiveBarColor: Colors.grey,
                        inverted: false,
                        verticalGap: 20,
                        activeIndex: 2,
                        barThickness: 8,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
