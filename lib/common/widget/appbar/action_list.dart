import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ActionList {
  static VoidCallback? videoCallButtonPressed;
  static VoidCallback? audioCallButtonPressed;
  static VoidCallback? messageButtonPressed;
  static VoidCallback? cameraButtonPressed;
  static VoidCallback? searchButtonPressed;
  static List<String> moreButtonText = [];
  static List<Widget> moreButtonPressed = [];
  static List<Widget> actions() => [
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
        if (moreButtonText != null)
          PopupMenuButton<VoidCallback>(
            onSelected: (value){
              value();
            },
              position: PopupMenuPosition.under,
              color: const Color(0xFF121B22),
              icon: const Icon(Icons.more_vert),
              itemBuilder: (BuildContext context) =>
                  List.generate(moreButtonText.length, (index) => PopupMenuItem<VoidCallback>(
                      value: (){
                        (moreButtonPressed != null) ? Get.to(() => moreButtonPressed[index]) : null;
                      },
                      child: Text(moreButtonText[index]),
                    )
                  )
          )
      ];
}
