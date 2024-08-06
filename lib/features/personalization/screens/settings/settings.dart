import 'package:flutter/material.dart';
import 'package:whatsapp_clone_with_flutter/common/widget/appbar/wa_app_bar.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WAAppBar(
        showBackButton: true,
        title: "Settings",
        searchButtonPressed: (){},
      ),
      body: Column(

      ),
    );
  }
}
