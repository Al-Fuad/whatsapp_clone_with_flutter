import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone_with_flutter/common/widget/image/circular_image.dart';
import 'package:whatsapp_clone_with_flutter/features/chats/screens/call_log/widget/call.dart';
import 'package:whatsapp_clone_with_flutter/features/chats/screens/call_log/widget/video_call.dart';

import '../../../../../utils/constants/app_color.dart';

class SingleCallLogTab extends StatelessWidget {
  const SingleCallLogTab({
    super.key,
    this.name = "Dev",
    this.image = "",
    this.time = "Today, 12:33 AM",
    this.isMissed = false,
    this.isIncoming = false,
    this.isVideoCall = false,
  });

  final bool isMissed;
  final bool isIncoming;
  final bool isVideoCall;
  final String name;
  final String image;
  final String time;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 10),
      minVerticalPadding: 15,
      leading: (image == "")
          ? CircleAvatar(
              backgroundColor: AppColor.grey,
              child: Icon(
                Icons.person,
                color: AppColor.white,
              ),
            )
          : CircularImage(
              image: image,
            ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style:
                TextStyle(fontSize: 16, color: isMissed ? AppColor.red : null),
          ),
          Row(
            children: [
              Icon(
                (isIncoming | isMissed)
                    ? CupertinoIcons.arrow_down_left
                    : CupertinoIcons.arrow_up_right,
                color: isMissed ? AppColor.red : AppColor.green,
                size: 12,
              ),
              Text(
                time,
                style: TextStyle(fontSize: 11, color: AppColor.grey),
              ),
            ],
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: isVideoCall
            ? () => Get.to(() => VideoCall(
                  name: name,
                ))
            : () => Get.to(() => Call(
                  name: name,
                  image: image,
                )),
        icon: isVideoCall
            ? const Icon(Icons.videocam_outlined)
            : const Icon(Icons.call_outlined),
      ),
    );
  }
}
