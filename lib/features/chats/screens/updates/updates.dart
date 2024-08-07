import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone_with_flutter/common/style/custom_border_style.dart';
import 'package:whatsapp_clone_with_flutter/common/widget/appbar/wa_app_bar.dart';
import 'package:whatsapp_clone_with_flutter/features/chats/screens/updates/widget/channel.dart';
import 'package:whatsapp_clone_with_flutter/features/personalization/screens/settings/settings.dart';
import 'package:whatsapp_clone_with_flutter/utils/constants/app_color.dart';
import 'package:whatsapp_clone_with_flutter/utils/helpers/helper_function.dart';

import '../../../../common/widget/image/circular_image.dart';
import '../../../../utils/constants/image_string.dart';

class Updates extends StatelessWidget {
  const Updates({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode();
    return Scaffold(
      backgroundColor:
          dark ? AppColor.backgroundDark : AppColor.backgroundLight,
      appBar: WAAppBar(
        title: "Updates",
        cameraButtonPressed: () {},
        searchButtonPressed: () {},
        moreButtonText: const ["Status privacy", "Create channel", "Settings"],
        moreButtonPressed: [Container(), Container(), const Settings()],
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
                          const CircularImage(),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: AppColor.primary,
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                      color: dark
                                          ? AppColor.black
                                          : AppColor.white)),
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "My Status",
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            "Tap to add status update",
                            style:
                                TextStyle(fontSize: 13, color: AppColor.grey),
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
                    style: TextStyle(fontSize: 13, color: AppColor.grey),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 170,
              child: ListView.separated(
                itemCount: 8,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) => const SizedBox(
                  width: 10,
                ),
                separatorBuilder: (_, index) => Channel(
                  name: "Channel ${index + 1}",
                  image: ImageString.whatsappLogo,
                ),
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
                    style: TextStyle(color: AppColor.black),
                  )),
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        verticalDirection: VerticalDirection.up,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: AppColor.primary,
            child: Icon(
              Icons.camera_alt,
              color: dark ? AppColor.black : AppColor.white,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 40,
            width: 40,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: dark ? AppColor.writeStatus : AppColor.grey,
              child: Icon(
                Icons.edit,
                color: dark ? AppColor.grey : AppColor.writeStatus,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
