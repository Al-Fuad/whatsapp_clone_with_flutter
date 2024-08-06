import 'package:flutter/material.dart';
import 'package:whatsapp_clone_with_flutter/common/widget/appbar/wa_app_bar.dart';
import 'package:whatsapp_clone_with_flutter/features/chats/screens/home/widget/single_chat_tab.dart';
import 'package:whatsapp_clone_with_flutter/utils/constants/app_color.dart';
import 'package:whatsapp_clone_with_flutter/utils/helpers/helper_function.dart';

class Archived extends StatelessWidget {
  const Archived({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode();
    return Scaffold(
      backgroundColor: dark ? AppColor.backgroudDark : AppColor.backgroudLight,
      appBar: WAAppBar(
        title: "Archived",
        moreButtonText: ["Archive settings"],
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
                child: const Text(
                  "These chats stay archived when new messages are received. Tap to change",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey
                  ),
                  textAlign: TextAlign.center,
                )),
            const SingleChatTab(),
            const SingleChatTab(),
            const SingleChatTab(),
            const SingleChatTab(),
            const SingleChatTab(),
            const SingleChatTab(),
            const SingleChatTab(),
            const SingleChatTab(),
            const SingleChatTab(),
            const SingleChatTab(),
            const SingleChatTab(),
            const SingleChatTab(),
            const SingleChatTab(),
            const SingleChatTab(),
            const SingleChatTab(),
          ],
        ),
      ),
    );
  }
}
