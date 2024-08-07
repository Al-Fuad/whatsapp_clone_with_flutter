import 'package:flutter/material.dart';
import 'package:whatsapp_clone_with_flutter/common/widget/appbar/wa_app_bar.dart';
import 'package:whatsapp_clone_with_flutter/features/chats/screens/home/widget/single_chat_tab.dart';
import 'package:whatsapp_clone_with_flutter/features/personalization/screens/archive_settings/archive_settings.dart';
import 'package:whatsapp_clone_with_flutter/utils/constants/app_color.dart';
import 'package:whatsapp_clone_with_flutter/utils/helpers/helper_function.dart';

import '../../../../utils/constants/image_string.dart';

class Archived extends StatelessWidget {
  const Archived({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode();
    return Scaffold(
      backgroundColor:
          dark ? AppColor.backgroundDark : AppColor.backgroundLight,
      appBar: const WAAppBar(
        title: "Archived",
        moreButtonText: ["Archive settings"],
        moreButtonPressed: [ArchiveSettings()],
        showBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: dark
                              ? AppColor.defaultBorderDark
                              : AppColor.defaultBorderLight,
                          width: 1)),
                ),
                child: Text(
                  "These chats stay archived when new messages are received. Tap to change",
                  style: TextStyle(fontSize: 14, color: AppColor.grey),
                  textAlign: TextAlign.center,
                )),
            SingleChatTab(
              username: "Barbarian",
              unreadCount: 1,
              profilePic: ImageString.user1,
              lastMessage: "Attack!!!",
            ),
            SingleChatTab(
              username: "Minion",
              unreadCount: 3,
              profilePic: ImageString.user2,
              lastMessage: "Attack!!!",
            ),
            SingleChatTab(
              username: "Bowler",
              unreadCount: 1,
              profilePic: ImageString.user3,
              lastMessage: "Attack!!!",
            ),
          ],
        ),
      ),
    );
  }
}
