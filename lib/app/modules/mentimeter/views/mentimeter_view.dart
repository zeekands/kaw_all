import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/mentimeter_controller.dart';

class MentimeterView extends GetView<MentimeterController> {
  const MentimeterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MentimeterView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MentimeterView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
