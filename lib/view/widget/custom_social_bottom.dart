import 'package:ecommerce_app/view/widget/custom_text.dart';
import 'package:flutter/material.dart';

class CustomSocialBottom extends StatelessWidget {
  final String? text;

  final String? imagePath;

  final VoidCallback? onPressed;

  final Color? color;

  const CustomSocialBottom(
      {this.text, this.imagePath, this.onPressed, this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: color!,
          padding: const EdgeInsets.all(18),
          shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(12))),

      onPressed: onPressed,
      child: Row(
        children: [
          Image.asset(imagePath!) ,
          const  SizedBox(width: 90,) ,
          CustomText(
            text: text!,
            alignment: Alignment.center,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}


