import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone_with_flutter/common/widget/appbar/wa_app_bar.dart';
import 'package:whatsapp_clone_with_flutter/features/chats/screens/call_log/widget/audio_call.dart';
import 'package:whatsapp_clone_with_flutter/features/chats/screens/message/widget/message_bar.dart';
import 'package:whatsapp_clone_with_flutter/features/chats/screens/message/widget/single_message_container.dart';
import 'package:whatsapp_clone_with_flutter/utils/helpers/helper_function.dart';

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode();
    return Scaffold(
      appBar: WAAppBar(
        titleWidget: GestureDetector(
          onTap: () {},
          child: const Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Wazih Vai",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "last seen today at 10:41 PM",
                    style: TextStyle(fontSize: 12),
                    textDirection: TextDirection.ltr,
                  ),
                ],
              )
            ],
          ),
        ),
        showBackButtonWithImage: true,
        leadingWidth: 81,
        videoCallButtonPressed: () {},
        audioCallButtonPressed: () => Get.to(() => AudioCall()),
        moreButtonPressed: () {},
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  dark ?
                  "assets/backgrounds/backgroundImageDark.png" :
                  "assets/backgrounds/backgroundImageLight.jpg",
                ),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Expanded(
                child:
                    SingleChildScrollView(
                      child:Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  verticalDirection: VerticalDirection.up,
                  children: [
                        SingleMessageContainer(user: true, text: 'sdjhjksdfjkhf',),
                        SingleMessageContainer(user: false, text: 'sdjhjksdfjkhf',),
                        SingleMessageContainer(user: true, text: 'sdjhjksdfjkhf',),
                        SingleMessageContainer(user: false, text: 'sdjhjksdfjkhf',),
                        SingleMessageContainer(user: true, text: 'sdjhjksdfjkhf',),
                        SingleMessageContainer(user: false, text: 'sdjhjksdfjkhf',),
                        SingleMessageContainer(user: true, text: 'sdjhjksdfjkhf',),
                        SingleMessageContainer(user: true, text: 'sdjhjksdfjkhf',),
                        SingleMessageContainer(user: false, text: 'sdjhjksdfjkhf',),
                        SingleMessageContainer(user: true, text: 'sdjhjksdfjkhf',),
                        SingleMessageContainer(user: false, text: 'sdjhjksdfjkhf',),
                        SingleMessageContainer(user: true, text: 'sdjhjksdfjkhf',),
                        SingleMessageContainer(user: false, text: 'sdjhjksdfjkhf',),
                        SingleMessageContainer(user: true, text: 'sdjhjksdfjkhf',),
                        SingleMessageContainer(user: false, text: 'sdjhjksdfjkhf',),
                        SingleMessageContainer(user: true, text: 'sdjhjksdfjkhf',),
                        SingleMessageContainer(user: true, text: 'sdjhjksdfjkhf',),
                        SingleMessageContainer(user: false, text: 'sdjhjksdfjkhf',),
                        SingleMessageContainer(user: true, text: 'sdjhjksdfjkhf',),
                        SingleMessageContainer(user: false, text: 'sdjhjksdfjkhf',),
                        SingleMessageContainer(user: true, text: 'sdjhjksdfjkhf',),
                        SingleMessageContainer(user: false, text: 'sdjhjksdfjkhf',),
                        SingleMessageContainer(user: true, text: 'sdjhjksdfjkhf',),
                        SingleMessageContainer(user: false, text: 'sdjhjksdfjkhf',),
                        SingleMessageContainer(user: true, text: 'sdjhjksdfjkhf',),
                        SingleMessageContainer(user: true, text: 'sdjhjksdfjkhf',),
                        SingleMessageContainer(user: false, text: 'sdjhjksdfjkhf',),
                        SingleMessageContainer(user: true, text: 'sdjhjksdfjkhf',),
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
