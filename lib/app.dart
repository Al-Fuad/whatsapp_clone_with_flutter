import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone_with_flutter/features/splash/screens/splash.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'WhatsApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      home: const Splash(),
    );
  }
}
