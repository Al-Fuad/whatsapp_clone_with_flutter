import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:whatsapp_clone_with_flutter/common/style/custom_border_style.dart';
import 'package:whatsapp_clone_with_flutter/common/widget/appbar/wa_app_bar.dart';
import 'package:whatsapp_clone_with_flutter/common/widget/image/circular_image.dart';
import 'package:whatsapp_clone_with_flutter/features/personalization/screens/profile/profile.dart';
import 'package:whatsapp_clone_with_flutter/utils/constants/app_color.dart';
import 'package:whatsapp_clone_with_flutter/utils/helpers/helper_function.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      "Account",
      "Privacy",
      "Avatar",
      "Favorites",
      "Chats",
      "Notification",
      "Storage and data",
      "App language",
      "Help",
      "Invite a friend"
    ];
    final List<String> subtitles = [
      "Security notifications, change number",
      "Block contacts, disappearing messages",
      "Create, edit, profile photo",
      "Add, reorder, remove",
      "Theme, wallpaper, chat history",
      "Message, group, & call tones",
      "Network usage, auto-download",
      "English (device's language)",
      "Help center, contact us, privacy policy",
      "",
    ];
    final List<Widget> onTaps = [];
    final List<IconData> icons = [
      Icons.key,
      Icons.lock_outline,
      Icons.emoji_emotions_outlined,
      CupertinoIcons.heart,
      Icons.chat_outlined,
      Icons.notifications_none,
      Icons.data_saver_off,
      CupertinoIcons.globe,
      Icons.help_outline,
      Icons.people_alt_outlined
    ];
    final dark = HelperFunctions.isDarkMode();
    return Scaffold(
        backgroundColor:
            dark ? AppColor.backgroundDark : AppColor.backgroundLight,
        appBar: WAAppBar(
          showBackButton: true,
          title: "Settings",
          searchButtonPressed: () {},
        ),
        body: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  border:
                      Border(bottom: CustomBorderStyle.defaultBorderSideStyle)),
              child: ListTile(
                onTap: () => Get.to(() => const Profile()),
                leading: const CircularImage(),
                title: Text(
                  "S M Al Fuad Nur",
                  style:
                      TextStyle(color: dark ? AppColor.white : AppColor.black),
                ),
                subtitle: Text(
                  "Available",
                  style: TextStyle(color: AppColor.grey),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.qr_code,
                          color: AppColor.primary,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_drop_down_circle_outlined,
                          color: AppColor.primary,
                        )),
                  ],
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) => ListTile(
                onTap: () => Get.to(() => print("Tapped")),
                leading: Icon(icons[index]),
                title: Text(
                  titles[index],
                  style: TextStyle(
                      color: dark ? AppColor.white : AppColor.black,
                      fontSize: 14),
                ),
                subtitle: (subtitles[index] != "")
                    ? Text(
                        subtitles[index],
                        style: TextStyle(color: AppColor.grey, fontSize: 12),
                      )
                    : null,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 18, bottom: 10),
              child: Text("Also from Meta",
                  style: TextStyle(color: AppColor.grey, fontSize: 12)),
            ),
            ListTile(
              onTap: () => Get.to(() => print("Tapped")),
              leading: const Icon(Iconsax.instagram),
              title: Text(
                "Open Instagram",
                style: TextStyle(
                    color: dark ? AppColor.white : AppColor.black,
                    fontSize: 14),
              ),
            ),
            ListTile(
              onTap: () => Get.to(() => print("Tapped")),
              leading: const Icon(Icons.facebook_outlined),
              title: Text(
                "Open Facebook",
                style: TextStyle(
                    color: dark ? AppColor.white : AppColor.black,
                    fontSize: 14),
              ),
            ),
          ],
        ));
  }
}
