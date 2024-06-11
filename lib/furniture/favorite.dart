import 'package:flutter/material.dart';
import 'package:furnitureui/furniture/search_3.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'cart.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  List product = [
    {"pic":"assets/0.jpg","text":"Coffee Table","price":"\$ 50.00","icon":Icons.cancel_outlined},
    {"pic":"assets/3.jpg","text":"Coffee Chair","price":"\$ 20.00","icon":Icons.cancel_outlined},
    {"pic":"assets/2.jpg","text":"Minimal Stand","price":"\$ 25.00","icon":Icons.cancel_outlined},
    {"pic":"assets/4.jpg","text":"Minimal Desk","price":"\$ 50.00","icon":Icons.cancel_outlined},
    {"pic":"assets/1.jpg","text":"Minimal Lamp","price":"\$ 12.00","icon":Icons.cancel_outlined},
    {"pic":"assets/0.jpg","text":"Coffee Table","price":"\$ 50.00","icon":Icons.cancel_outlined},
    {"pic":"assets/3.jpg","text":"Coffee Chair","price":"\$ 20.00","icon":Icons.cancel_outlined},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Get.to(Search());
            },
            child: Icon(Icons.search_rounded)),
        centerTitle: true,
        title: Text("Favorites",
            style: TextStyle(fontSize: 16, color: Color(0XFF303030))),
        actions: [Padding(
          padding: const EdgeInsets.only(right:15),
          child: InkWell(
              onTap: () {
                Get.to(Cart());
              },
              child: Icon(Icons.shopping_cart_outlined,color: Colors.black87,)),
        )],
      ),
      body: ListView(
        children: [
          ListView.builder(
            itemCount: product.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 9,
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: BoxDecoration(color: Colors.black),
                          child: Image.asset(
                            "${product[index]["pic"]}",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 45, left: 10),
                        child: Column(
                          children: [
                            Text(
                            "${product[index]["text"]}",
                              style:
                              TextStyle(color: Color(0XFF606060), fontSize: 16),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 25),
                              child: Text("${product[index]["price"]}",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0XFF303030),
                                    fontWeight: FontWeight.bold,
                                  )),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 70, right: 17),
                        child: InkWell(
                            onTap: () {
                              product.removeAt(index);
                              setState(() {

                              });
                            },
                            child: Icon(product[index]["icon"],)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 300,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(color: Color(0XFFF0F0F0)),
                  ),
                ),
              ],
            );
          },),

              ],
            ),



      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
          left: 25,
        ),
        child: InkWell(
          onTap: () {
            Get.to(Cart());
          },
          child: Container(
            height: MediaQuery.of(context).size.height / 15,
            width: MediaQuery.of(context).size.width / 1,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text("Add all to my cart",
                  style: TextStyle(
                      color: Color(0XFFFFFFFF),
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
            ),
          ),
        ),
      ),
    );
  }
}
