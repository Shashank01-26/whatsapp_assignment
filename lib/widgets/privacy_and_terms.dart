import 'package:chatzo/common/extension/custom_theme_extension.dart';
import 'package:chatzo/common/utils/colors.dart';
import 'package:flutter/material.dart';

class PrivacyAndTerms extends StatelessWidget {
  const PrivacyAndTerms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
      child: RichText(
        textAlign: TextAlign.center,
          text: TextSpan(
            text: "Read Our",
            style: TextStyle(
              color: context.theme.greyColor,
              height:1.5,
            ),
            children: [
              TextSpan(
                text: " Privacy Policy",
                style:TextStyle(
                  color: context.theme.blueColor,
                ),
              ),
              TextSpan(
                text: '\nTap "Agree and continue" to accept the',
              ),
              TextSpan(
                text: " Terms of Services",
                style: TextStyle(
                  color: context.theme.blueColor,
                ),
              ),
            ]
          ),
      ),
    );
  }
}