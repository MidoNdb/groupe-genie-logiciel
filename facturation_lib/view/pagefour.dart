import 'package:courgetx/controler/rebuildcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageFour extends StatelessWidget {
  final RebuildController excntroller = Get.put(RebuildController(),permanent: true);

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
                  child: GetX<RebuildController>(
                      builder: (rcontroler) {
                        print("rebuild1");
                        return Text("${rcontroler.i.value}");
                      })),
              Center(
                  child: GetX<RebuildController>(
                      
                      builder: (controler) {
                        print("rebuild2");
                        return Text("${controler.j.value}");
                      })),
              Center(
                  child: GetX<RebuildController>(
                      
                      builder: (Rcontroler) {
                        print("sum rebuild");
                        return Text("${Rcontroler.sum2}");
                      })),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    excntroller.incrementgetx();
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("Add one"),
                ),
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    excntroller.decrementgetx();
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
