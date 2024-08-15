import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/profile_screen.dart';

import 'counter_controller.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  // final CounterController _counterController = Get.put(CounterController());
  final CounterController _counterController = Get.find<CounterController>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounterController>(builder: (counterController){
              return Text(
                '${counterController.counter}',
                style: const TextStyle(
                    fontSize: 24, fontWeight: FontWeight.w600),
              );
            }),
            ElevatedButton(onPressed: () {Get.off(()=> const ProfileScreen());}, child: const Text('Go to Profile')),
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
