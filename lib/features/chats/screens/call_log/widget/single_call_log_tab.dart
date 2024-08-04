import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/app_color.dart';

class SingleCallLogTab extends StatelessWidget {
  const SingleCallLogTab(
      {super.key,
        this.isMissed = false,
       this.isIncoming = false,
       this.isVideoCall = false,
      });

  final bool isMissed, isIncoming, isVideoCall;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 10),
      minVerticalPadding: 15,
      leading: CircleAvatar(
        backgroundColor: AppColor.grey,
        child: Icon(
          Icons.people,
          color: AppColor.white,
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Person1",
            style: TextStyle(fontSize: 16, color: isMissed ? Colors.red : AppColor.white),
          ),
          Row(
            children: [
              Icon(

                (isIncoming|isMissed) ? CupertinoIcons.arrow_down_left : CupertinoIcons.arrow_up_right,
                color: isMissed ? Colors.red : Colors.green,
                size: 12,
              ),
              Text(
                "Today, 12:33 AM",
                style: TextStyle(fontSize: 11, color: AppColor.grey),
              ),
            ],
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: isVideoCall ? Icon(Icons.videocam_outlined) : Icon(Icons.call_outlined),
      ),
    );
  }
}
