import 'package:flutter/material.dart';
import 'package:whatsapp_clone_with_flutter/common/style/custom_border_style.dart';
import 'package:whatsapp_clone_with_flutter/common/widget/appbar/action_list.dart';
import 'package:whatsapp_clone_with_flutter/features/chats/screens/home/widget/archive_tab.dart';
import 'package:whatsapp_clone_with_flutter/features/chats/screens/home/widget/single_chat_tab.dart';
import 'package:whatsapp_clone_with_flutter/features/personalization/screens/settings/settings.dart';
import 'package:whatsapp_clone_with_flutter/utils/constants/app_color.dart';
import 'package:whatsapp_clone_with_flutter/utils/helpers/helper_function.dart';

import '../../../../utils/constants/image_string.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    ActionList actionListHome = ActionList();
    actionListHome.cameraButtonPressed = () {};
    actionListHome.searchButtonPressed = () {};
    actionListHome.moreButtonText = [
      "New group",
      "New broadcast",
      "Linked devices",
      "Starred messages",
      "Settings"
    ];
    actionListHome.moreButtonPressed = [
      Container(),
      Container(),
      Container(),
      Container(),
      const Settings()
    ];
    final dark = HelperFunctions.isDarkMode();
    return Scaffold(
      backgroundColor:
          dark ? AppColor.backgroundDark : AppColor.backgroundLight,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>
            [
          SliverAppBar(
            floating: true,
            title: const Text(
              "WhatsApp",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            centerTitle: false,
            backgroundColor:
                dark ? AppColor.backgroundDark : AppColor.backgroundLight,
            shape: Border(
              bottom: CustomBorderStyle.defaultBorderSideStyle,
            ),
            actions: actionListHome.actions(),
          ),
        ],
        body: SingleChildScrollView(
          child: Column(
            children: [
              const ArchiveTab(
                unread: 5,
              ),
              const SingleChatTab(
                isPinned: true,
              ),
              SingleChatTab(
                username: "Person 1",
                lastMessage: "Hello!",
                unreadCount: 1,
                profilePic: ImageString.user2,
              ),
              SingleChatTab(
                username: "Person 2",
                lastMessage: "Where are you, now?",
                profilePic: ImageString.user3,
              ),
              SingleChatTab(
                isGroup: true,
                username: "Group 1",
                profilePic: ImageString.group1,
                lastMessage: "Person 1: Hello, @everyone...",
                unreadCount: 4,
              ),
              SingleChatTab(
                username: "Person 3",
                lastMessage: "How are you?",
                unreadCount: 1,
                profilePic: ImageString.user1,
              ),
              SingleChatTab(
                username: "Person 4",
                lastMessage: "Where are you, now?",
                profilePic: ImageString.user2,
              ),
              SingleChatTab(
                isGroup: true,
                username: "Group 2",
                profilePic: ImageString.group2,
                lastMessage: "Person 1: Hello, @everyone...",
                unreadCount: 4,
              ),
              const SingleChatTab(
                isPinned: true,
              ),
              SingleChatTab(
                username: "Person 1",
                lastMessage: "Hello!",
                unreadCount: 1,
                profilePic: ImageString.user2,
              ),
              SingleChatTab(
                username: "Person 2",
                lastMessage: "Where are you, now?",
                profilePic: ImageString.user3,
              ),
              SingleChatTab(
                isGroup: true,
                username: "Group 1",
                profilePic: ImageString.group1,
                lastMessage: "Person 1: Hello, @everyone...",
                unreadCount: 4,
              ),
              SingleChatTab(
                username: "Person 3",
                lastMessage: "How are you?",
                unreadCount: 1,
                profilePic: ImageString.user1,
              ),
              SingleChatTab(
                username: "Person 4",
                lastMessage: "Where are you, now?",
                profilePic: ImageString.user2,
              ),
              SingleChatTab(
                isGroup: true,
                username: "Group 2",
                profilePic: ImageString.group2,
                lastMessage: "Person 1: Hello, @everyone...",
                unreadCount: 4,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColor.primary,
        child: Icon(
          Icons.add_comment,
          color: dark ? AppColor.black : AppColor.white,
        ),
      ),
    );
  }
}
