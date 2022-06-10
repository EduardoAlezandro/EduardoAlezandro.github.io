import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/experience_controller.dart';

class ExperienceView extends GetView<ExperienceController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExperienceView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ExperienceView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
