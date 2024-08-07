import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone_with_flutter/features/chats/screens/message/message.dart';
import 'package:whatsapp_clone_with_flutter/utils/constants/app_color.dart';
import 'package:whatsapp_clone_with_flutter/utils/helpers/helper_function.dart';

import '../../../../../common/widget/image/circular_image.dart';
import '../../../../../utils/constants/image_string.dart';

class SingleChatTab extends StatelessWidget {
  const SingleChatTab(
      {super.key,
      this.username = "Nur",
      this.lastMessage = "Ok, thanks.",
      this.isGroup = false,
      this.time = "02:10 PM",
      this.unreadCount = 0,
      this.profilePic,
      this.isMuted = false,
      this.isPinned = false});

  final String username;
  final String lastMessage;
  final bool isGroup;
  final String time;
  final int unreadCount;
  final String? profilePic;
  final bool isMuted;
  final bool isPinned;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode();
    return InkWell(
      onTap: () => Get.to(() => Message(
            username: username,
            image: profilePic ?? ImageString.user1,
            lastSeen: "last seen today at 10:41 PM",
            isGroup: isGroup,
          )),
      highlightColor: dark ? AppColor.secondaryDark : AppColor.secondaryLight,
      splashFactory: NoSplash.splashFactory,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 13),
        child: Row(
          children: [
            CircularImage(
              image: profilePic,
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        username,
                        style: const TextStyle(fontSize: 16),
                      ),
                      Row(
                        children: [
                          Text(
                            time,
                            style: TextStyle(
                                color: (unreadCount > 0)
                                    ? AppColor.primary
                                    : AppColor.grey,
                                fontSize: 11),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          if (isGroup && unreadCount > 0)
                            Container(
                              decoration: BoxDecoration(
                                color: AppColor.primary,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 15,
                              width: 30,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    ("$unreadCount"),
                                    style: TextStyle(
                                        fontSize: 10, color: AppColor.white),
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Icon(
                                    CupertinoIcons.right_chevron,
                                    size: 12,
                                    color: AppColor.white,
                                  ),
                                ],
                              ),
                            )
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          lastMessage,
                          softWrap: true,
                          maxLines: 1,
                          style: TextStyle(fontSize: 13, color: AppColor.grey),
                        ),
                      ),
                      Row(
                        children: [
                          if (isMuted)
                            const Icon(
                              CupertinoIcons.bell_slash,
                              size: 14,
                            ),
                          if (isPinned)
                            const Icon(
                              CupertinoIcons.pin_fill,
                              size: 14,
                            ),
                          const SizedBox(
                            width: 2,
                          ),
                          if (!isGroup && unreadCount > 0)
                            SizedBox(
                                width: 13,
                                height: 13,
                                child: CircleAvatar(
                                  backgroundColor: AppColor.primary,
                                  child: Text(
                                    ("$unreadCount"),
                                    style: TextStyle(
                                        fontSize: 9, color: AppColor.white),
                                  ),
                                ))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
