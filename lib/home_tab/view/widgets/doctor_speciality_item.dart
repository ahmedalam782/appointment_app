import 'package:appointment_app/shared/themes/app_theme.dart';
import 'package:flutter/material.dart';

class DoctorSpecialityItem extends StatelessWidget {
  const DoctorSpecialityItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: AppTheme.primaryColor.withOpacity(.1),
          child: Image.asset(
            "assets/images/Brain 1.png",
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(height: 15,),
        Text(
          "Brain",
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
            fontSize: 12,
          ),
        )
      ],
    );
  }
}
