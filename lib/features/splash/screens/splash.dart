import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone_with_flutter/features/authentication/screens/welcome/welcome.dart';
import 'package:whatsapp_clone_with_flutter/utils/constants/app_color.dart';
import 'package:whatsapp_clone_with_flutter/utils/helpers/helper_function.dart';

import '../../../utils/constants/image_string.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 2000), () {
      // Get.off(() => const BottomNav(), transition: Transition.fade);
      Get.off(() => const Welcome(), transition: Transition.fade);
    });
  }

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode();
    return Scaffold(
      backgroundColor:
          dark ? AppColor.splashBackgroundDark : AppColor.splashBackgroundLight,
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: SizedBox(
              child: Image(
                image: dark
                    ? AssetImage(ImageString.whatsappDark)
                    : AssetImage(ImageString.whatsapp),
                width: 50,
                height: 50,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Text(
                  "from",
                  style: TextStyle(
                      color: dark ? AppColor.white : null,
                      fontWeight: FontWeight.w200,
                      fontSize: 9),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: dark
                          ? AssetImage(ImageString.metaDark)
                          : AssetImage(ImageString.meta),
                      height: 18,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      "Meta",
                      style: TextStyle(
                          color: dark ? AppColor.white : AppColor.primary,
                          fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
