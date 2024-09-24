import 'package:flutter/material.dart';

import '../../../shared/themes/app_theme.dart';
import '../../../shared/widgets/custom_text_form_field.dart';

class MessageInput extends StatelessWidget {
  final TextEditingController controller = TextEditingController();

  MessageInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: Colors.white,
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: const Icon(
              Icons.add,
              color: AppTheme.black,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: CustomTextFormField(
              hintText: "Type a message ...",
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.emoji_emotions_outlined,
                  color: AppTheme.grey,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {},
            child: CircleAvatar(
              radius: 25,
              backgroundColor: AppTheme.primaryColor,
              child: Icon(
                Icons.send,
                color: AppTheme.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
