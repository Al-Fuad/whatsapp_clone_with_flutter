import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone_with_flutter/common/style/border_style.dart';
import 'package:whatsapp_clone_with_flutter/common/widget/appbar/wa_app_bar.dart';
import 'package:whatsapp_clone_with_flutter/common/widget/button/circular_image_button.dart';
import 'package:whatsapp_clone_with_flutter/features/chats/screens/updates/widget/channel.dart';
import 'package:whatsapp_clone_with_flutter/utils/constants/app_color.dart';
import 'package:whatsapp_clone_with_flutter/utils/helpers/helper_function.dart';

class Updates extends StatelessWidget {
  const Updates({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode();
    return Scaffold(
      backgroundColor: dark ? AppColor.backgroudDark : AppColor.backgroudLight,
      appBar: WAAppBar(
        title: "Updates",
        cameraButtonPressed: (){},
        searchButtonPressed: (){},
        moreButtonPressed: (){},
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                border: Border(
                  bottom: CustomBorderStyle.defaultBorderSideStyle,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Status",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Stack(
                        children: [
                          const CircularImageButton(),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: AppColor.primary,
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(color: AppColor.black)),
                              child: Icon(
                                Icons.add,
                                color: AppColor.black,
                                size: 15,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "My Status",
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            "Tap to add status update",
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Channels",
                        style: TextStyle(fontSize: 18),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text(
                                "Explore",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: AppColor.primary,
                                    fontWeight: FontWeight.normal),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Icon(
                                CupertinoIcons.right_chevron,
                                size: 13,
                                color: AppColor.primary,
                              )
                            ],
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Stay updated to topics that matter to you. Find channels to follow below.",
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 170,
              child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 12,),
                    Channel(),
                    Channel(),
                    Channel(),
                    Channel(),
                    Channel(),
                    Channel(),
                    Channel(),
                  ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.primary),
                  onPressed: () {},
                  child: Text(
                    "Explore more",
                    style:
                    TextStyle(color: AppColor.black),
                  )
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        verticalDirection: VerticalDirection.up,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {  },
            backgroundColor: AppColor.primary,
            child: Icon(Icons.camera_alt, color: AppColor.black,),
          ),
          SizedBox(height: 10,),
          SizedBox(
            height: 40,
            width: 40,
            child: FloatingActionButton(
              onPressed: () {  },
                backgroundColor: AppColor.writeStatus,
                child: Icon(Icons.edit, color: AppColor.grey,),
                ),
          ),
        ],
      ),
    );
  }
}

