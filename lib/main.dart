import 'dart:developer';

import 'package:animation1/controller/animation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(AnimationTween());
}

class AnimationTween extends StatefulWidget {
  const AnimationTween({Key? key}) : super(key: key);

  @override
  State<AnimationTween> createState() => _AnimationTweenState();
}

class _AnimationTweenState extends State<AnimationTween>
    with SingleTickerProviderStateMixin {
  final AnimationTweenss animationTweenssController =
      Get.put(AnimationTweenss());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: GetBuilder<AnimationTweenss>(
            init: AnimationTweenss(),
            initState: (state) {},
            builder: (controller) => Center(
              child: Container(
                height: controller.animation!.value,
                width: controller.animation!.value,
                color: controller.colorAnimation!.value,
              ),
            ),
          ),
        ));
  }
}
