import 'package:flutter/material.dart';
import 'package:whatsapp_clone_with_flutter/features/chats/screens/communities/widget/single_community.dart';
import 'package:whatsapp_clone_with_flutter/features/personalization/screens/settings/settings.dart';
import 'package:whatsapp_clone_with_flutter/utils/constants/image_string.dart';
import 'package:whatsapp_clone_with_flutter/utils/helpers/helper_function.dart';

import '../../../../common/widget/appbar/wa_app_bar.dart';
import '../../../../common/widget/image/circular_image.dart';
import '../../../../utils/constants/app_color.dart';

class Communities extends StatelessWidget {
  const Communities({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode();
    return Scaffold(
      backgroundColor: dark ? AppColor.black : AppColor.white,
      appBar: WAAppBar(
        title: "Communities",
        cameraButtonPressed: () {},
        moreButtonText: const ["Settings"],
        moreButtonPressed: const [Settings()],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                color:
                    dark ? AppColor.backgroundDark : AppColor.backgroundLight,
                child: ListTile(
                  onTap: () {},
                  leading: Stack(
                    children: [
                      const CircularImage(
                        icon: Icons.groups,
                      ),
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
                  title: const Text("New Community"),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SingleCommunity(
                name: "Community 1",
                image: ImageString.community1,
                groupNames: const ["Group 1", "Group 2"],
                groupImages: [ImageString.group1, ImageString.group2],
              ),
              const SizedBox(
                height: 8,
              ),
              SingleCommunity(
                name: "Community 2",
                image: ImageString.community2,
                groupNames: const ["Group 1", "Group 2", "Group 3", "Group 4"],
                groupImages: [
                  ImageString.group4,
                  ImageString.group1,
                  ImageString.group3,
                  ImageString.group2
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              SingleCommunity(
                name: "Community 3",
                image: ImageString.community3,
                groupNames: const ["Group 1", "Group 2", "Group 3"],
                groupImages: [
                  ImageString.group1,
                  ImageString.group2,
                  ImageString.group1
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              SingleCommunity(
                name: "Community 4",
                image: ImageString.community4,
                groupNames: const ["Group 1", "Group 2", "Group 3"],
                groupImages: [
                  ImageString.group1,
                  ImageString.group2,
                  ImageString.group4
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
