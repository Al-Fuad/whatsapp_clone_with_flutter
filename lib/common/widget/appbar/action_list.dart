import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone_with_flutter/utils/helpers/helper_function.dart';

import '../../../utils/constants/app_color.dart';

class ActionList {
  final dark = HelperFunctions.isDarkMode();
  VoidCallback? videoCallButtonPressed;
  VoidCallback? audioCallButtonPressed;
  VoidCallback? messageButtonPressed;
  VoidCallback? cameraButtonPressed;
  VoidCallback? searchButtonPressed;
  List<String> moreButtonText = [];
  List<Widget> moreButtonPressed = [];
  List<Widget> actions() => [
        if (videoCallButtonPressed != null)
          IconButton(
            iconSize: 22,
            icon: const Icon(
              Icons.videocam_outlined,
            ),
            onPressed: videoCallButtonPressed,
          ),
        if (audioCallButtonPressed != null)
          IconButton(
            iconSize: 22,
            icon: const Icon(
              Icons.call_outlined,
            ),
            onPressed: audioCallButtonPressed,
          ),
        if (messageButtonPressed != null)
          IconButton(
            iconSize: 22,
            icon: const Icon(
              Icons.message_rounded,
            ),
            onPressed: messageButtonPressed,
          ),
        if (cameraButtonPressed != null)
          IconButton(
            iconSize: 22,
            icon: const Icon(
              Icons.camera_alt_outlined,
            ),
            onPressed: cameraButtonPressed,
          ),
        if (searchButtonPressed != null)
          IconButton(
            iconSize: 22,
            icon: const Icon(Icons.search),
            onPressed: searchButtonPressed,
          ),
        if (moreButtonText.isNotEmpty)
          PopupMenuButton<VoidCallback>(
              onSelected: (value) {
                value();
              },
              position: PopupMenuPosition.under,
              color: dark ? AppColor.popupDark : AppColor.popupLight,
              icon: const Icon(Icons.more_vert),
              itemBuilder: (BuildContext context) => List.generate(
                  moreButtonText.length,
                  (index) => PopupMenuItem<VoidCallback>(
                        value: () {
                          (moreButtonPressed != null)
                              ? Get.to(() => moreButtonPressed[index])
                              : null;
                        },
                        child: Text(moreButtonText[index]),
                      )))
      ];
}
