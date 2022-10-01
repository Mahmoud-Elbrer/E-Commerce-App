import 'package:ecommerce_app/view/widget/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? text;

  final VoidCallback? onPressed;

  final Color? color;

  const CustomButton(
      {super.key, this.text, this.onPressed, required this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: color!,
          padding: const EdgeInsets.all(18),
          shape:
              BeveledRectangleBorder(borderRadius: BorderRadius.circular(10))),
      onPressed: onPressed,
      child: CustomText(
        text: 'SIGN IN',
        alignment: Alignment.center,
        color: Colors.white,
      ),
    );
  }
}
