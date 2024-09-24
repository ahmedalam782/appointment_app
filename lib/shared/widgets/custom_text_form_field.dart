import 'package:appointment_app/shared/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.suffixIcon,
    this.prefixIcon,
    this.controller,
    this.validator,
    this.maxLines = 1,
  });

  final TextEditingController? controller;
  final String hintText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final int maxLines;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context).textTheme.headlineLarge?.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: AppTheme.black,
          ),
      maxLines: maxLines,
      validator: validator,
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      cursorColor: AppTheme.primaryColor,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),
            borderSide: BorderSide(color: AppTheme.grey.withOpacity(.5))),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
          borderSide: BorderSide(color: AppTheme.grey.withOpacity(.5)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
          borderSide: BorderSide(
            color: AppTheme.primaryColor,
          ),
        ),
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.headlineLarge?.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppTheme.grey,
            ),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
    );
  }
}
