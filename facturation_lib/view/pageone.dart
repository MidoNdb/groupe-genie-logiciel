import 'package:courgetx/controler/homecontroller.dart';
import 'package:courgetx/view/home.dart';
import 'package:courgetx/view/pagethree.dart';
import 'package:courgetx/view/pagetwo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page one"),
        centerTitle: true,
      ),
      body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Center(
                  child: GetBuilder<HomeController>(
                      init: HomeController(),
                      builder: (controler) => Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    controler.increment();
                                  },
                                  icon: Icon(Icons.add,size: 30,)),
                              Text("${controler.counter}",style: TextStyle(fontSize: 20)),
                              IconButton(
                                  onPressed: () {
                                    controler.decrement();
                                  },
                                  icon: Icon(Icons.remove,size: 30,))
                            ],
                          ))),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    Get.offAll(() => Home());
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("back home"),
                ),
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    Get.to(() => PageTwo());
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("page two"),
                ),
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    Get.to(() => PageThree());
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("page three"),
                ),
              )
            ],
          )),
    );
  }
}
