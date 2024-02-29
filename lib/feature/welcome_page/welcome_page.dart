import 'package:chatzo/common/extension/custom_theme_extension.dart';
import 'package:chatzo/common/utils/colors.dart';
import 'package:chatzo/common/utils/widgets/custom_elevated_button.dart';
import 'package:chatzo/widgets/language_button.dart';
import 'package:chatzo/widgets/privacy_and_terms.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: Image.asset(
                  'assets/images/circle.png',
                  color: context.theme.circleImageColor,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Expanded(
            child: Center(
              child: Column(
                children: [
                  const Text(
                    "Welcome to WhatsApp",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const PrivacyAndTerms(),
                  CustomElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, "/phoneLogin");
                    },
                    text:"Agree and continue"
                     ),
                  const SizedBox(height: 50),
                  LanguageSelection(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

