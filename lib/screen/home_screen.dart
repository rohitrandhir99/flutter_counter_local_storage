import 'package:counter_app/controller/counter_controller.dart';
import 'package:counter_app/widgets/icon_btn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CounterController());

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Obx(
            () => Text(
              controller.number.value.toString(),
              style: const TextStyle(
                fontSize: 64,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(
          bottom: 42.0,
          right: 32,
          left: 32,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconBtn(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              borderColor: Colors.grey.shade400,
              icon: Icons.add,
              onTap: controller.increaseCount,
            ),
            IconBtn(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              borderColor: Colors.grey.shade400,
              icon: Icons.remove,
              onTap: controller.decreaseCount,
            ),
          ],
        ),
      ),
    );
  }
}
