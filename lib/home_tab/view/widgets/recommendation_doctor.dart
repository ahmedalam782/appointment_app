import 'package:appointment_app/shared/themes/app_theme.dart';
import 'package:flutter/material.dart';

class RecommendationDoctor extends StatelessWidget {
  const RecommendationDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/images/doctor.png"),
        SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Dr. Randy Wigham",
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                Text(
                  "General ",
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppTheme.grey
                  ),
                ),
                Text(
                  "| RSUD Gatot Subroto",
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppTheme.grey
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
