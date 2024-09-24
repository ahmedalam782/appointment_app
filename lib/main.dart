import 'package:appointment_app/auth/view/screens/login_screen.dart';
import 'package:appointment_app/home/view/screens/home_screen.dart';
import 'package:appointment_app/messages_tab/view/screens/message_screen.dart';
import 'package:appointment_app/shared/themes/app_theme.dart';
import 'package:flutter/material.dart';

import 'auth/view/screens/register_screen.dart';

void main() {
  runApp(const AppointmentApp());
}

class AppointmentApp extends StatelessWidget {
  const AppointmentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        LoginScreen.routeName: (_) => LoginScreen(),
        RegisterScreen.routeName: (_) => RegisterScreen(),
        HomeScreen.routeName:(_)=>HomeScreen(),
        MessageScreen.routeName:(_)=>MessageScreen()
      },
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
    );
  }
}
