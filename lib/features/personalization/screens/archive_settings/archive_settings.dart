import 'package:flutter/material.dart';
import 'package:whatsapp_clone_with_flutter/common/widget/appbar/wa_app_bar.dart';
import 'package:whatsapp_clone_with_flutter/utils/constants/app_color.dart';
import 'package:whatsapp_clone_with_flutter/utils/helpers/helper_function.dart';

class ArchiveSettings extends StatefulWidget {
  const ArchiveSettings({super.key});

  @override
  State<ArchiveSettings> createState() => _ArchiveSettingsState();
}

class _ArchiveSettingsState extends State<ArchiveSettings> {
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode();
    return Scaffold(
      backgroundColor:
          dark ? AppColor.backgroundDark : AppColor.backgroundLight,
      appBar: const WAAppBar(
        showBackButton: true,
        title: "Archive settings",
      ),
      body: ListTile(
        title: Text(
          "Keep chats archived",
          style: TextStyle(
              color: dark ? AppColor.white : AppColor.black, fontSize: 16),
        ),
        subtitle: Text(
          "Archived chats will remain archived when you receive a new message",
          style: TextStyle(fontSize: 13, color: AppColor.grey),
        ),
        trailing: Switch(
          activeColor: dark ? AppColor.black : AppColor.white,
          activeTrackColor: AppColor.primary,
          value: _switchValue,
          onChanged: (value) {
            setState(() {
              _switchValue = value;
            });
          },
        ),
      ),
    );
  }
}
