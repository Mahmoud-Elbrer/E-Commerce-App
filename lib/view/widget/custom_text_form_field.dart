import 'package:ecommerce_app/view/widget/custom_text.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? text;

  final String? hintText;

   Function(String? val)? onSaved;

  final FormFieldValidator? validator;

   CustomTextFormField(
      {super.key, this.text, this.hintText, this.onSaved, this.validator});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomText(text: text!, fontSize: 14, color: Colors.grey.shade900),
          TextFormField(
            onSaved: onSaved,
            validator: validator,
            decoration: InputDecoration(
              hintText: hintText!,
              hintStyle: const TextStyle(
                color: Colors.grey,
              ),
              fillColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
