import 'package:courgetx/view/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    title: "getX",
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
     debugShowCheckedModeBanner: false,
    home: Home(),
  )
  );
}
