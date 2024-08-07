import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone_with_flutter/common/widget/appbar/wa_app_bar.dart';
import 'package:whatsapp_clone_with_flutter/features/chats/screens/call_log/widget/single_call_log_tab.dart';
import 'package:whatsapp_clone_with_flutter/features/personalization/screens/settings/settings.dart';
import 'package:whatsapp_clone_with_flutter/utils/constants/app_color.dart';
import 'package:whatsapp_clone_with_flutter/utils/helpers/helper_function.dart';

import '../../../../utils/constants/image_string.dart';

class CallLog extends StatelessWidget {
  const CallLog({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode();
    return Scaffold(
      backgroundColor:
          dark ? AppColor.backgroundDark : AppColor.backgroundLight,
      appBar: WAAppBar(
        title: "Calls",
        cameraButtonPressed: () {},
        searchButtonPressed: () {},
        moreButtonText: const ["Clear call log", "Settings"],
        moreButtonPressed: [Container(), const Settings()],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Favorites",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              ListTile(
                title: const Text("Add to Favorites"),
                leading: IconButton(
                  onPressed: () {},
                  style:
                      IconButton.styleFrom(backgroundColor: AppColor.primary),
                  icon: Icon(
                    CupertinoIcons.heart_fill,
                    color: dark ? AppColor.black : AppColor.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Recent",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SingleCallLogTab(
                name: "Person 1",
                image: ImageString.user1,
                time: "Today, 12:33 AM",
                isVideoCall: true,
              ),
              SingleCallLogTab(
                name: "Group 2",
                image: ImageString.group2,
                time: "Today, 12:33 AM",
                isIncoming: true,
                isVideoCall: true,
              ),
              SingleCallLogTab(
                name: "Group 3",
                image: ImageString.group3,
                time: "Today, 12:33 AM",
                isMissed: true,
              ),
              SingleCallLogTab(
                name: "Person 3",
                image: ImageString.user3,
                time: "Today, 12:33 AM",
                isMissed: true,
              ),
              SingleCallLogTab(
                name: "Person 4",
                image: ImageString.user4,
                time: "Today, 12:33 AM",
                isVideoCall: true,
              ),
              SingleCallLogTab(
                name: "Group 1",
                image: ImageString.group1,
                time: "Today, 12:33 AM",
              ),
              SingleCallLogTab(
                name: "Group 2",
                image: ImageString.group2,
                time: "Today, 12:33 AM",
                isIncoming: true,
                isVideoCall: true,
              ),
              SingleCallLogTab(
                name: "Group 3",
                image: ImageString.group3,
                time: "Today, 12:33 AM",
                isMissed: true,
              ),
              SingleCallLogTab(
                name: "Person 2",
                image: ImageString.user2,
                time: "Today, 12:33 AM",
                isIncoming: true,
              ),
              SingleCallLogTab(
                name: "Group 4",
                image: ImageString.group4,
                time: "Today, 12:33 AM",
              ),
              SingleCallLogTab(
                name: "Person 1",
                image: ImageString.user1,
                time: "Today, 12:33 AM",
                isVideoCall: true,
              ),
              SingleCallLogTab(
                name: "Person 2",
                image: ImageString.user2,
                time: "Today, 12:33 AM",
                isIncoming: true,
              ),
              SingleCallLogTab(
                name: "Person 3",
                image: ImageString.user3,
                time: "Today, 12:33 AM",
                isMissed: true,
              ),
              SingleCallLogTab(
                name: "Person 4",
                image: ImageString.user4,
                time: "Today, 12:33 AM",
                isVideoCall: true,
              ),
              SingleCallLogTab(
                name: "Group 1",
                image: ImageString.group1,
                time: "Today, 12:33 AM",
              ),
              SingleCallLogTab(
                name: "Group 4",
                image: ImageString.group4,
                time: "Today, 12:33 AM",
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColor.primary,
        child: Icon(
          Icons.add_ic_call,
          color: dark ? AppColor.black : AppColor.white,
        ),
      ),
    );
  }
}
