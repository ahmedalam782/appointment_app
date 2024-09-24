import 'package:appointment_app/shared/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../shared/themes/app_theme.dart';
import '../../../shared/widgets/custom_text_form_field.dart';
import 'custom_time.dart';
import 'custom_show_date.dart';

class AppointmentTab extends StatefulWidget {
  const AppointmentTab({super.key});

  @override
  State<AppointmentTab> createState() => _AppointmentTabState();
}

class _AppointmentTabState extends State<AppointmentTab> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController _patientName = TextEditingController();
  final TextEditingController _illnessDescription = TextEditingController();

  @override
  void dispose() {
    _patientName.dispose();
    _illnessDescription.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            CustomTextFormField(
              hintText: 'Patient Name',
              controller: _patientName,
              validator: (value) => value != null
                  ? "please patient name must not be empty"
                  : null,
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextFormField(
              hintText: 'IllnessDescription',
              controller: _illnessDescription,
              maxLines: 4,
              validator: (value) => value != null
                  ? "please Illness Description must not be empty"
                  : null,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Book a Date",
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppTheme.black,
                  ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomShowDate(),
            SizedBox(
              height: 20,
            ),
            Text(
              "Book a Time",
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppTheme.black,
                  ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) => CustomTime(),
                itemCount: 10,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              btnTitle: "Book",
              onPressed: () {
                if(formKey.currentState!.validate()){

                }
              },
            )
          ],
        ),
      ),
    );
  }
}
