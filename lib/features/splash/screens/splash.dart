import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone_with_flutter/features/Chat/screens/home/home.dart';
import 'package:whatsapp_clone_with_flutter/utils/helpers/helper_function.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 2000),(){
      Get.off(() => const Home(), transition: Transition.fade);
    });
  }

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      backgroundColor: dark ? Color(0xFF121B22) : Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: SizedBox(
              child: Image(
                image: dark
                    ? const AssetImage("assets/logos/whatsapp_dark.png")
                    : const AssetImage("assets/logos/whatsapp.png"),
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
                      color: dark ? Colors.white : null,
                      fontWeight: FontWeight.w200,
                      fontSize: 9),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: dark
                          ? const AssetImage("assets/logos/meta_dark.png")
                          : const AssetImage("assets/logos/meta.png"),
                      height: 18,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      "Meta",
                      style: TextStyle(
                          color: dark ? Colors.white : const Color(0xff25D366),
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
