import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone_with_flutter/utils/helpers/helper_function.dart';

import '../../../../../utils/constants/app_color.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({super.key});

  showBottomSheet(context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 4,
                    width: 30,
                    decoration: BoxDecoration(
                      color: AppColor.grey.withOpacity(.4),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const SizedBox(width: 20),
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.close),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'App Language',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Divider(
                    thickness: .5,
                    color: AppColor.grey.withOpacity(.3),
                  ),
                  RadioListTile(
                    value: true,
                    groupValue: true,
                    onChanged: (value) {},
                    activeColor: AppColor.secondaryDark,
                    title: const Text('English'),
                    subtitle: Text(
                      "(Device language)",
                      style: TextStyle(
                        color: AppColor.grey,
                      ),
                    ),
                  ),
                  RadioListTile(
                    value: true,
                    groupValue: false,
                    onChanged: (value) {},
                    activeColor: AppColor.secondaryDark,
                    title: const Text('বাংলা'),
                    subtitle: Text(
                      "Bengali",
                      style: TextStyle(
                        color: AppColor.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode();
    return TextButton(
        style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            backgroundColor:
                dark ? AppColor.textButtonDark : AppColor.textButtonLight),
        onPressed: () => showBottomSheet(context),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              CupertinoIcons.globe,
              color: AppColor.secondary,
            ),
            Text(
              "English",
              style: TextStyle(color: AppColor.secondary),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: AppColor.secondary,
            )
          ],
        ));
  }
}
