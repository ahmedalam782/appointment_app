import 'package:appointment_app/messages_tab/view/widgets/messsge_item.dart';
import 'package:flutter/material.dart';

import '../../../shared/themes/app_theme.dart';

class MessageTab extends StatelessWidget {
  const MessageTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (_, index) => const MessageItem(),
      separatorBuilder: (_, index) => const SizedBox(
        height: 10,
      ),
      itemCount: 20,
    );
  }
}
