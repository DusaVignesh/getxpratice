import 'package:flutter/material.dart';
import 'package:getxpratice/controllers/controller.dart';
import 'package:get/get.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            color: Colors.black,
            icon: Icon(Icons.arrow_back_ios),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<TapController>(builder: (_) {
                return Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber),
                  child: Center(child: Text(controller.x.toString())),
                );
              }),
              GestureDetector(
                onTap: () {
                  controller.DecreaseX();
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber),
                  child: const Center(child: Text('DecreaseX')),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
