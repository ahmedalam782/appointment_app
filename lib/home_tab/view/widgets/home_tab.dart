import 'package:appointment_app/home_tab/view/widgets/recommendation_doctor.dart';
import 'package:appointment_app/shared/themes/app_theme.dart';
import 'package:flutter/material.dart';

import 'doctor_speciality_item.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Doctor Speciality",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {  },
                child: Text(
                  "See All",
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge
                      ?.copyWith(fontSize: 12, color: AppTheme.primaryColor),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) => const DoctorSpecialityItem(),
              separatorBuilder: (_, index) => const SizedBox(
                width: 10,
              ),
              itemCount: 5,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                "Recommendation Doctor",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {  },
                child: Text(
                  "See All",
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge
                      ?.copyWith(fontSize: 12, color: AppTheme.primaryColor),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            flex: 2,
            child: ListView.separated(
              itemBuilder: (_, index) => const RecommendationDoctor(),
              separatorBuilder: (_, index) => const SizedBox(
                height: 10,
              ),
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
