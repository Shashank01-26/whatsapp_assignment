import 'package:chatzo/common/extension/custom_theme_extension.dart';
import 'package:flutter/material.dart';

class PhoneLoginWidget extends StatefulWidget {
  const PhoneLoginWidget({super.key});

  @override
  State<PhoneLoginWidget> createState() => _PhoneLoginWidgetState();
}

class _PhoneLoginWidgetState extends State<PhoneLoginWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Enter your Phone Number"),
      )
    );
  }
}
