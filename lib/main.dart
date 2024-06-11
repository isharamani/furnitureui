import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:furnitureui/furniture/Home.dart';
import 'package:get/get.dart';
import 'furniture/Boarding.dart';
import 'furniture/Log in.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey:"AIzaSyAuyOLOmo_qMz4Rf-O4JA88IXqIJH_twrw",
          appId:"1:800182417106:android:56eac6bcd6651a44c39f0b",
          messagingSenderId: "800182417106",
          projectId:"furnitureui-48a11"));
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Page1(),
    );
  }
}


