import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone_with_flutter/common/widget/appbar/wa_app_bar.dart';
import 'package:whatsapp_clone_with_flutter/features/chats/screens/call_log/widget/single_call_log_tab.dart';
import 'package:whatsapp_clone_with_flutter/utils/constants/app_color.dart';
import 'package:whatsapp_clone_with_flutter/utils/helpers/helper_function.dart';

class CallLog extends StatelessWidget {
  const CallLog({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode();
    return Scaffold(
      backgroundColor: dark ? AppColor.backgroudDark : AppColor.backgroudLight,
      appBar: WAAppBar(
        title: "Calls",
        cameraButtonPressed: () {},
        searchButtonPressed: () {},
        moreButtonPressed: () {},
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Favotites",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                title: Text("Add to Favorites"),
                leading: IconButton(
                  onPressed: () {},
                  style:
                      IconButton.styleFrom(backgroundColor: AppColor.primary),
                  icon: Icon(
                    CupertinoIcons.heart_fill,
                    color: AppColor.black,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Recent",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SingleCallLogTab(isVideoCall: true,),
              SingleCallLogTab(isIncoming: true,),
              SingleCallLogTab(isMissed: true,),
              SingleCallLogTab(isVideoCall: true,),
              SingleCallLogTab(),
              SingleCallLogTab(isIncoming: true,isVideoCall: true,),
              SingleCallLogTab(isMissed: true,),
              SingleCallLogTab(),
              SingleCallLogTab(),
              SingleCallLogTab(isIncoming: true,),
              SingleCallLogTab(isMissed: true,),
              SingleCallLogTab(),
              SingleCallLogTab(),
              SingleCallLogTab(isIncoming: true,),
              SingleCallLogTab(isMissed: true,),
              SingleCallLogTab(),
              SingleCallLogTab(),
              SingleCallLogTab(isIncoming: true,),
              SingleCallLogTab(isMissed: true,),
              SingleCallLogTab(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        backgroundColor: AppColor.primary,
        child: Icon(Icons.add_ic_call, color: AppColor.black,),
      ),

    );
  }
}
