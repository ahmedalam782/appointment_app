import 'package:appointment_app/shared/themes/app_theme.dart';
import 'package:appointment_app/shared/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../widgets/message_bubble.dart';
import '../widgets/message_input.dart';

class MessageScreen extends StatefulWidget {
  static const String routeName = 'MessageScreen';

  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  final List<Message> messages = [
    Message(sender: 'User1', text: 'Hello!'),
    Message(sender: 'User2', text: 'Hi there! How are you?'),
    Message(sender: 'User1', text: 'I am good, thanks!'),
    Message(sender: 'User1', text: 'Hello!'),
    Message(sender: 'User2', text: 'Hi there! How are you?'),
    Message(sender: 'User1', text: 'I am good, thanks!'),
    Message(sender: 'User1', text: 'Hello!'),
    Message(sender: 'User2', text: 'Hi there! How are you?'),
    Message(sender: 'User1', text: 'I am good, thanks!'),
    // Add more messages here
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 50,
        titleSpacing: 40,
        title: Column(
          children: [
            Text(
              "Dr. Randy Wigham",
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "Online",
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge
                  ?.copyWith(fontSize: 18, color: Colors.grey),
            ),
          ],
        ),
      ),
/*      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ListView(
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.all(8),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: AppTheme.primaryColor,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      border: Border.all(color: Colors.grey, width: 1)),
                  child: Text(
                    "data",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge
                        ?.copyWith(fontSize: 14, color: AppTheme.white),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.all(8),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: AppTheme.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      border: Border.all(color: Colors.grey, width: 1)),
                  child: Text(
                    "data",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          fontSize: 14,
                        ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(12),
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      hintText: "Type a message ...",
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.emoji_emotions_outlined,
                          color: AppTheme.grey,
                        ),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.attach_file,
                          color: AppTheme.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
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
            )
          ],
        ),
      ),*/
    body: Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: messages.length,
            itemBuilder: (context, index) {
              return MessageBubble(message: messages[index]);
            },
          ),
        ),
        MessageInput(),
      ],
    ),
    );
  }
}
