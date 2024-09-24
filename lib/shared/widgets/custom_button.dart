import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.btnTitle, this.onPressed});

  final String btnTitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16))),
        fixedSize: const Size(double.maxFinite, 52),
        backgroundColor: AppTheme.primaryColor,
      ),
      onPressed: onPressed,
      child: Text(
        btnTitle,
        style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppTheme.white,
            ),
      ),
    );
  }
}
