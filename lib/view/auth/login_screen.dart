import 'package:flutter/material.dart';

import '../../constance.dart';
import '../widget/custom_button.dart';
import '../widget/custom_social_bottom.dart';
import '../widget/custom_text.dart';
import '../widget/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: 'Welcome,', fontSize: 30, color: Colors.black),
                CustomText(text: 'Sign', fontSize: 18, color: primaryColor),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            CustomText(
                text: 'Sign in to Continue', fontSize: 18, color: primaryColor),
            const SizedBox(
              height: 30,
            ),
            const CustomTextFormField(
              text: 'Email',
              hintText: 'mahmoud@gmail.com',
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextFormField(
              text: 'Password',
              hintText: '***********',
            ),
            CustomText(
                text: 'Forgot Password?',
                fontSize: 14,
                alignment: Alignment.topRight),
            ElevatedButton(
              onPressed: () {},
              child: Text('SIGN IN'),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              text: 'SIGN IN',
              onPressed: () {},
              color: primaryColor,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomText(text: '-OR-', fontSize: 14, alignment: Alignment.center),
            const SizedBox(
              height: 40,
            ),
            CustomSocialBottom(
              text: 'Sign In with Facebook',
              color: Colors.white,
              onPressed: () {},
              imagePath: 'assets/images/facebook.png',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomSocialBottom(
              text: 'Sign In with Google',
              color: Colors.white,
              onPressed: () {},
              imagePath: 'assets/images/google.png',
            ),
          ],
        ),
      ),
    );
  }
}
