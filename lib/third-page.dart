import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxpratice/controllers/controller.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(10),
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
                        'x value is ' + Get.find<TapController>().x.toString(),
                      ),
                    ),
                  ),
                );
              }),
              Obx(() => Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.amber),
                    width: double.maxFinite,
                    height: 100,
                    child: Center(
                      child: Text(
                        'y value is ' + Get.find<TapController>().y.toString(),
                      ),
                    ),
                  )),
              GestureDetector(
                onTap: () {
                  Get.find<TapController>().IncreaseX();
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
                      'IncreaseX',
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.find<TapController>().IncreaseY();
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
                      'IncreaseY',
                    ),
                  ),
                ),
              ),
              Obx(() => Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.amber),
                    width: double.maxFinite,
                    height: 100,
                    child: Center(
                      child: Text(
                        controller.total.toString(),
                      ),
                    ),
                  )),
              GestureDetector(
                onTap: () {
                  Get.find<TapController>()
                      .saveTotal(controller.x + controller.y);
                  print(controller.list);
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
                      'Save Total',
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
