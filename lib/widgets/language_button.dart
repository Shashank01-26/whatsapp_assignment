import 'package:chatzo/common/extension/custom_theme_extension.dart';
import 'package:chatzo/common/utils/colors.dart';
import 'package:flutter/material.dart';

class LanguageSelection extends StatelessWidget {
  const LanguageSelection({
    super.key,
  });

  showBottomSheet(context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column(
            children: [
              Container(
                height: 4,
                width: 30,
                decoration: BoxDecoration(
                    color: context.theme.greyColor!.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(10)),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    splashColor: Colors.transparent,
                    splashRadius: 22,
                    iconSize: 22,
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(minWidth: 40),
                    icon: const Icon(
                      Icons.close_outlined,
                      color: Coloors.greyDark,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "App Language",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.theme.langBtnBgColor,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () => showBottomSheet(
          context,
        ),
        borderRadius: BorderRadius.circular(20),
        splashFactory: NoSplash.splashFactory,
        highlightColor: context.theme.langBtnHighlightColor,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.language,
              color: Coloors.greyDark,
            ),
            const SizedBox(width: 15),
            Text(
              "English",
              style: TextStyle(
                color: context.theme.greyColor,
              ),
            ),
            const SizedBox(width: 15),
            Icon(
              Icons.keyboard_arrow_down,
              color: Coloors.greenDark,
            ),
          ],
        ),
      ),
    );
  }
}
