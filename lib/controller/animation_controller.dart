import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimationTweenss extends GetxController
    with GetSingleTickerProviderStateMixin {
  Animation? animation;
  Animation? colorAnimation;
  AnimationController? animationController;
  @override
  void onInit() {
    super.onInit();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    animation = Tween(begin: 0.0, end: 150.0).animate(animationController!);
    colorAnimation = ColorTween(begin: Colors.black, end: Colors.amber)
        .animate(animationController!);
    animationController!.addListener(() {
      update();
    });
    animationController!.forward();
  }
}
