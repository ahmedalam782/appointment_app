import 'package:appointment_app/appointment_tab/view/widgets/appointment_tab.dart';
import 'package:appointment_app/home_tab/view/widgets/home_tab.dart';
import 'package:appointment_app/messages_tab/view/widgets/message_tab.dart';
import 'package:flutter/material.dart';

import '../../../shared/themes/app_theme.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> _screen = [HomeTab(), MessageTab(), AppointmentTab()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: currentIndex!=0,
        title: currentIndex == 0
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi, Omar!",
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    "How Are you Today?",
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          fontSize: 11,
                          color: AppTheme.grey,
                        ),
                  ),
                ],
              )
            : currentIndex == 1
                ? Text(
                    "Messaging",
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                  )
                : Text(
                    "Appointment",
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
        actions: currentIndex == 0
            ? [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: AppTheme.grey.withOpacity(.3),
                    child: IconButton(
                      onPressed: () {},
                      icon: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Icon(Icons.notifications_none),
                          Positioned(
                            right: 3,
                            top: 1,
                            child: CircleAvatar(
                              radius: 4,
                              backgroundColor: AppTheme.red,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ]
            : null,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Appointment ',
          )
        ],
      ),
      body: IndexedStack(
        index: currentIndex,
        children: _screen,
      ),
    );
  }
}
