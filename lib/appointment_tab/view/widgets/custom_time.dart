import 'package:flutter/material.dart';

import '../../../shared/themes/app_theme.dart';

class CustomTime extends StatefulWidget {
  const CustomTime(
      {super.key, this.backgroundColor = Colors.white});

  final Color backgroundColor;

  @override
  State<CustomTime> createState() => _CustomChipBuilderWidgetState();
}

class _CustomChipBuilderWidgetState extends State<CustomTime> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(12)),
        border: Border.all(
          color: AppTheme.primaryColor,
        ),
      ),
      child: Text(
        "8:30",
        style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              fontSize: 15,
              color: AppTheme.black,
            ),
      ),
    );
  }
}
