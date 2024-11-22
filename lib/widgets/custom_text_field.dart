import 'package:flutter/material.dart';
import 'package:my_portfolioo/utility/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
     this.getInputBorder,
     this.controller,
     this.maxLine = 1,
     this.hintText,
  });

  final OutlineInputBorder? getInputBorder;
  final TextEditingController? controller;
  final int? maxLine;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLine,
      style: const TextStyle(color: CustomColor.scaffoldBg),
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(16),
          filled: true,
          fillColor: CustomColor.whiteSecondary,
          focusedBorder: getInputBorder,
          enabledBorder: getInputBorder,
          border: getInputBorder,
          hintText: hintText,
          hintStyle: const TextStyle(color: CustomColor.hintDark)),
    );
  }
}
