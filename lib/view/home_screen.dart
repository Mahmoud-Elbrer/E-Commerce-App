import 'package:ecommerce_app/view/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/view_model/auth.dart';

class HomeScreen extends GetWidget<AuthViewModel> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          child: const Text('Logout'),
          onPressed: () {
            controller.signOut() ;
            Get.offAll(LoginScreen());
          },
        ),
      ),
    );
  }
}
