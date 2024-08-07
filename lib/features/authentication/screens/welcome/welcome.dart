import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone_with_flutter/common/widget/appbar/wa_app_bar.dart';
import 'package:whatsapp_clone_with_flutter/features/authentication/screens/verification/verification.dart';
import 'package:whatsapp_clone_with_flutter/features/authentication/screens/welcome/widget/language_button.dart';
import 'package:whatsapp_clone_with_flutter/utils/constants/app_color.dart';
import 'package:whatsapp_clone_with_flutter/utils/constants/image_string.dart';
import 'package:whatsapp_clone_with_flutter/utils/helpers/helper_function.dart';

import '../../../../common/widget/button/default_button.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode();
    return Scaffold(
      backgroundColor:
          dark ? AppColor.backgroundDark : AppColor.backgroundLight,
      appBar: const WAAppBar(
        moreButtonText: ["Help"],
        showBorder: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                    height: 350,
                    child: Image.asset(
                      ImageString.backgroundCircle,
                      color: AppColor.primary,
                    )),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  "Welcome to Whatsapp",
                  style: TextStyle(
                      color: dark ? AppColor.white : AppColor.black,
                      fontSize: 22),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 36),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: "Read our ",
                        style: TextStyle(
                            color: AppColor.grey, fontSize: 14, height: 1.3),
                        children: [
                          TextSpan(
                              text: "Privacy Policy",
                              style: TextStyle(color: AppColor.blue)),
                          const TextSpan(
                            text: ". Tap \"Agree and continue\" to accept the ",
                          ),
                          TextSpan(
                              text: "Terms of Service",
                              style: TextStyle(color: AppColor.blue)),
                          const TextSpan(text: "."),
                        ]),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  width: 150,
                  child: LanguageButton(),
                )
              ],
            ),
            DefaultButton(
                text: "Agree and continue",
                next: () => Get.off(() => const Verification()))
          ],
        ),
      ),
    );
  }
}
