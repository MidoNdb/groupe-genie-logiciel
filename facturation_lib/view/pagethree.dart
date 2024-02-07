import 'package:courgetx/controler/homecontroller.dart';
import 'package:courgetx/view/home.dart';
import 'package:courgetx/view/pageone.dart';
import 'package:courgetx/view/pagetwo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageThree extends StatelessWidget {
  PageThree({super.key});
  final HomeController controler = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" page three"),
        centerTitle: true,
      ),
      body: Container(  
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Center(
                  child: Obx(() => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {
                                controler.incrementgetx();
                              },
                              icon: Icon(Icons.add, size: 30)),
                          Text(
                            "${controler.i.value}",
                            style: TextStyle(fontSize: 20),
                          ),
                          IconButton(
                              onPressed: () {
                                controler.decrementgetx();
                              },
                              icon: Icon(
                                Icons.remove,
                                size: 30,
                              ))
                        ],
                      ))),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    Get.offAll(() => Home());
                  },
                  color: Colors.blue,
                  textColor: const Color.fromRGBO(255, 255, 255, 1),
                  child: Text("page Home"),
                ),
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    Get.off(() => PageOne());
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("page one"),
                ),
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    Get.off(() => PageTwo());
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("page two"),
                ),
              )
            ],
          )),
    );
  }
}
