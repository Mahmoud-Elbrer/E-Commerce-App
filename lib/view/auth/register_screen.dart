import 'package:ecommerce_app/view/auth/login_screen.dart';
import 'package:flutter/material.dart';
import '../../constance.dart';
import '../../core/view_model/auth.dart';
import '../widget/custom_button.dart';
import '../widget/custom_social_bottom.dart';
import '../widget/custom_text.dart';
import '../widget/custom_text_form_field.dart';
import 'package:get/get.dart';

class RegisterScreen extends GetWidget<AuthViewModel> {
  // LoginScreen({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector( onTap: (){
          Get.offAll(LoginScreen());
        }, child: const Icon(Icons.arrow_back )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              CustomText(
                  text: 'Sign Up', fontSize: 30, color: Colors.black),
              const SizedBox(
                height: 10,
              ),
              CustomText(
                  text: 'Sign in to Continue',
                  fontSize: 18,
                  color: primaryColor),
              const SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                text: 'Name',
                hintText: 'your-name',
                onSaved: (value) {
                  controller.name = value! ;
                },
              ),
              CustomTextFormField(
                text: 'Email',
                hintText: 'mahmoud@gmail.com',

                onSaved: (value) {
                  print(value);
                  controller.email = value!;
                  print('controller.email');
                  print(controller.email);
                },
                // validator: (value) {
                //   if (value != null) {
                //     return 'wrong valid';
                //   }
                //   return null;
                // },
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                text: 'Password',
                hintText: '***********',
                onSaved: (value) {
                  controller.password = value!;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CustomText(
                  text: 'Forgot Password?',
                  fontSize: 14,
                  alignment: Alignment.topRight),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                text: 'SIGN IN',
                onPressed: () {
                  //  _formKey.currentState!.save();
                  // if (_formKey.currentState!.validate()) {
                  controller.createAccountWithEmailAndPassword();
                  // }

                  // Get.to(LoginScreen());
                },
                color: primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
