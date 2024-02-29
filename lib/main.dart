import 'package:chatzo/common/theme/dark_theme.dart';
import 'package:chatzo/common/theme/light_theme.dart';
import 'package:chatzo/feature/phone_auth/presentation/phone_auth_login.dart';
import 'package:chatzo/feature/welcome_page/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      title: 'WhatsApp',
      home: WelcomePage(),
      routes:{
        '/phoneLogin': (context) => const PhoneLoginWidget(),
      }
    );
  }
}
