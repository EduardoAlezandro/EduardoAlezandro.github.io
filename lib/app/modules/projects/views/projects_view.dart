import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/projects_controller.dart';

class ProjectsView extends GetView<ProjectsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProjectsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ProjectsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
