import 'package:courgetx/controler/rebuildcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageFive extends StatelessWidget {
  final RebuildController excntroller = Get.put(RebuildController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page five"),
        centerTitle: true,
      ),
      body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Center(
                  child: GetBuilder<RebuildController>(
                      init: RebuildController(),
                      builder: (rcontroler) {
                        print("rebuld1");
                        return Text("${rcontroler.count1}");
                      })),
              Center(
                  child: GetBuilder<RebuildController>(
                      builder: (controler) {
                        print("rebuild2");
                        return Text("${controler.count2}");
                      })),
              Center(
                  child: GetBuilder<RebuildController>(
                      builder: (Rcontroler) {
                        print("sum rebuild");
                        return Text("${Rcontroler.sum1}") ;
                      } )),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    excntroller.increment();
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("Add one"),
                ),
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    excntroller.decrement();
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("Add two"),
                ),
              ),
            ],
          )),
    );
  }
}
