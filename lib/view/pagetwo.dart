//import 'package:courgetx/view/home.dart';
import 'package:courgetx/controler/homecontroller.dart';
import 'package:courgetx/view/home.dart';
import 'package:courgetx/view/pageone.dart';
import 'package:courgetx/view/pagethree.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page two"),
        centerTitle: true,
      ),
      body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Center(
                  child: GetX<HomeController>(
                      init: HomeController(),
                      builder: (controler) => Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    controler.incrementgetx();
                                  },
                                  icon: Icon(Icons.add,size: 30)),
                              Text("${controler.i.value}",style: TextStyle(fontSize: 20),),
                              IconButton(
                                  onPressed: () {
                                    controler.decrementgetx();
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
                    Get.off(() => PageThree());
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
