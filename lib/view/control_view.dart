import 'package:ecommerce_app/view/auth/login_screen.dart';
import 'package:ecommerce_app/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/view_model/auth.dart';

class ControlView extends GetWidget<AuthViewModel> {
  const ControlView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return (Get.find<AuthViewModel>().user != null)
          ? const HomeScreen()
          : LoginScreen();
    });
  }
}
