import 'package:appointment_app/shared/themes/app_theme.dart';
import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final Message message;

  const MessageBubble({required this.message});

  @override
  Widget build(BuildContext context) {
    final isMe = message.sender == 'User1'; // Change to your sender logic

    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: isMe ? AppTheme.primaryColor : AppTheme.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(isMe ? 0 : 20),
            topLeft: Radius.circular(isMe ? 20 : 0),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          border: Border.all(
            color: AppTheme.grey.withOpacity(.3),
            width: 1,
          ),
        ),
        child: Text(
          message.text,
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                fontSize: 14,
                color: isMe ? AppTheme.white : AppTheme.black,
              ),
        ),
      ),
    );
  }
}

class Message {
  final String sender;
  final String text;

  Message({required this.sender, required this.text});
}
