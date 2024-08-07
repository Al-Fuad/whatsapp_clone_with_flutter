import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone_with_flutter/common/widget/appbar/wa_app_bar.dart';
import 'package:whatsapp_clone_with_flutter/features/chats/screens/call_log/widget/video_call.dart';
import 'package:whatsapp_clone_with_flutter/features/chats/screens/message/widget/message_bar.dart';
import 'package:whatsapp_clone_with_flutter/features/chats/screens/message/widget/single_message_container.dart';
import 'package:whatsapp_clone_with_flutter/utils/constants/image_string.dart';
import 'package:whatsapp_clone_with_flutter/utils/helpers/helper_function.dart';

import '../call_log/widget/call.dart';

class Message extends StatelessWidget {
  const Message(
      {super.key,
      required this.username,
      required this.lastSeen,
      required this.image,
      required this.isGroup});

  final String username;
  final String lastSeen;
  final String image;
  final bool isGroup;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode();
    return Scaffold(
      appBar: WAAppBar(
        image: image,
        titleWidget: GestureDetector(
          onTap: () {},
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    username,
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    lastSeen,
                    style: const TextStyle(fontSize: 12),
                    textDirection: TextDirection.ltr,
                  ),
                ],
              )
            ],
          ),
        ),
        showBackButtonWithImage: true,
        leadingWidth: 90,
        videoCallButtonPressed: () => Get.to(() => VideoCall(
              name: username,
            )),
        audioCallButtonPressed: () => Get.to(() => Call(
              image: image,
              name: username,
            )),
        moreButtonText: const [
          "View Contact",
          "Media, links, and docs",
          "Search",
          "Mute notifications",
          "Disappearing messages",
          "Wallpaper",
          "More"
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  dark
                      ? ImageString.backgroundImageDark
                      : ImageString.backgroundImageLight,
                ),
                fit: BoxFit.cover)),
        child: const Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  verticalDirection: VerticalDirection.up,
                  children: [
                    SingleMessageContainer(
                      text: 'Ok, thanks.',
                      time: "5:15 AM",
                    ),
                    SingleMessageContainer(
                      user: false,
                      text: 'Check it',
                      time: "5:14 AM",
                    ),
                    SingleMessageContainer(
                      user: false,
                      text: 'https://docs.flutter.dev/testing/common-errors',
                      time: "5:14 AM",
                    ),
                    SingleMessageContainer(
                      text: 'A RenderFlex overflowed…',
                      time: '5:13 AM',
                    ),
                    SingleMessageContainer(
                      user: false,
                      text: 'Give the error text',
                      time: "5:12 AM",
                    ),
                    SingleMessageContainer(
                      user: false,
                      text: 'Hello',
                      time: '5:12 AM',
                    ),
                    SingleMessageContainer(
                        text: "There is an error in my code.", time: "5:11 AM"),
                    SingleMessageContainer(text: "Hi", time: "5:11 AM"),
                  ],
                ),
              ),
            ),
            MessageBar(),
          ],
        ),
      ),
    );
  }
}
