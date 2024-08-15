import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/counter_controller.dart';
import 'package:getx/settings_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // final CounterController _counterController = Get.put(CounterController());
  final CounterController _counterController = Get.find<CounterController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Obx(() => Text(
            //   '${_counterController.counter}',
            //   style: const TextStyle(
            //       fontSize: 24, fontWeight: FontWeight.w600),
            // )),
            GetBuilder<CounterController>(builder: (_){
              return Text(
                '${_counterController.counter}',
                style: const TextStyle(
                    fontSize: 24, fontWeight: FontWeight.w600),
              );
            }),
            ElevatedButton(onPressed: () {Get.off(()=>const SettingsScreen());}, child: const Text('Go to settings')),
            ElevatedButton(onPressed: () {Get.back();}, child: const Text('Back')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counterController.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
