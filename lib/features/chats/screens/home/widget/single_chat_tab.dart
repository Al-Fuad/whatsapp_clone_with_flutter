import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:whatsapp_clone_with_flutter/common/widget/button/circular_image_button.dart';
import 'package:whatsapp_clone_with_flutter/features/chats/screens/message/message.dart';
import 'package:whatsapp_clone_with_flutter/utils/constants/app_color.dart';

class SingleChatTab extends StatelessWidget {
  const SingleChatTab({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(() => const Message()),
      highlightColor: AppColor.secondaryDark,
      splashFactory: NoSplash.splashFactory,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 13),
        child: Row(
          children: [
            CircularImageButton(),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Wazih Vai", style: TextStyle(fontSize: 16),),
                      Row(
                        children: [
                          Text(
                            "02:10 PM",
                            style:
                                TextStyle(color: AppColor.primary, fontSize: 11),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Container(
                            // color: AppColor.primary,
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
                                  "7",
                                  style: TextStyle(fontSize: 10, color: AppColor.white),
                                ),
                                SizedBox(
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
                      const Flexible(
                        child: Text(
                          "Reloaded 1 of 812 libraries in 172ms (compile: 43 ms, reload: 61 ms, reassemble: 48 ms)",
                          softWrap: true,
                          maxLines: 1,
                          style: TextStyle(fontSize: 13, color: Colors.grey),
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Iconsax.volume_mute,
                            size: 14,
                          ),
                          const Icon(
                            CupertinoIcons.pin_fill,
                            size: 14,
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          SizedBox(
                              width: 13,
                              height: 13,
                              child: CircleAvatar(
                                backgroundColor: AppColor.primary,
                                child: Text(
                                  "7",
                                  style: TextStyle(fontSize: 9, color: AppColor.white),
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

