import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxpratice/third-page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(ThirdPage());
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
                      'To Third Page',
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
