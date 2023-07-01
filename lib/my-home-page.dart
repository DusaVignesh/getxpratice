import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxpratice/second-page.dart';

import 'controllers/controller.dart';
import 'first-page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.put(TapController());
    return GetMaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<TapController>(builder: (_) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.amber),
                    width: double.maxFinite,
                    height: 100,
                    child: Center(
                      child: Text(
                        controller.x.toString(),
                      ),
                    ),
                  ),
                );
              }),
              GestureDetector(
                onTap: () {
                  controller.IncreaseX();
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber),
                  width: double.maxFinite,
                  height: 100,
                  child: const Center(
                    child: Text(
                      'on Tap',
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(FirstPage());
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber),
                  width: double.maxFinite,
                  height: 100,
                  child: const Center(
                    child: Text(
                      'To First Page',
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(SecondPage());
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber),
                  width: double.maxFinite,
                  height: 100,
                  child: const Center(
                    child: Text(
                      'To Second Page',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
