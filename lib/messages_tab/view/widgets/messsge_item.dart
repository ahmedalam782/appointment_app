import 'package:appointment_app/messages_tab/view/screens/message_screen.dart';
import 'package:flutter/material.dart';

import '../../../shared/themes/app_theme.dart';

class MessageItem extends StatelessWidget {
  const MessageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, MessageScreen.routeName);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(
                "assets/images/doctor.png",
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dr. Randy Wigham",
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        "General ",
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppTheme.grey),
                      ),
                      Text(
                        "| RSUD Gatot Subroto",
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppTheme.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Fine, I'll do a check. Does the patient have a history of certain diseases?",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppTheme.grey),
                  ),
                ],
              ),
            ),
            Text(
              "7:30 ",
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppTheme.grey,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
