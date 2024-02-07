import 'package:courgetx/view/pagefive.dart';
import 'package:courgetx/view/pagefour.dart';
import 'package:courgetx/view/pageone.dart';
import 'package:courgetx/view/pagethree.dart';
import 'package:courgetx/view/pagetwo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home page"),
        centerTitle: true,
      ),
      body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Center(
                child: MaterialButton(
                  onPressed: () {
                    Get.to(()=>PageOne());
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("page one"),
                ),
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    Get.to(()=>PageTwo());
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("page two"),
                ),
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    Get.to(()=>PageThree());
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("page three"),
                ),
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    Get.to(()=>PageFour());
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("page four"),
                ),
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    
                    Get.to(()=>PageFive());
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("page five"),
                ),
              )
            ],
          )),
    );
  }
}
