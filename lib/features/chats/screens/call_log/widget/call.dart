import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone_with_flutter/utils/constants/app_color.dart';
import 'package:whatsapp_clone_with_flutter/utils/constants/image_string.dart';
import 'package:whatsapp_clone_with_flutter/utils/helpers/helper_function.dart';

import '../../../../../common/style/custom_border_style.dart';
import '../../../../../common/widget/image/circular_image.dart';

class Call extends StatelessWidget {
  const Call(
      {super.key, this.isAudioCall = true, this.image, this.name = "Unknown"});

  final bool isAudioCall;
  final String? name;
  final String? image;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode();
    return Scaffold(
        body: Container(
          padding: const EdgeInsets.all(10),
          decoration: isAudioCall
              ? BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(dark
                          ? ImageString.backgroundImageDark
                          : ImageString.backgroundImageLight),
                      fit: BoxFit.cover))
              : null,
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 50,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          CupertinoIcons.lock,
                          size: 12,
                        ),
                        Text(
                          "End-to-end encrypted",
                          style: TextStyle(fontSize: 12, color: AppColor.grey),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                      width: 50,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Iconsax.user_add4,
                            color: AppColor.white,
                          )))
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              if (isAudioCall)
                (image == null)
                    ? Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: AppColor.unknownUserBackground,
                            borderRadius: BorderRadius.circular(100)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 10,
                                left: -2,
                                child: Icon(
                                  Icons.person,
                                  color: AppColor.white,
                                  size: 107,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    : CircularImage(
                        length: 100,
                        image: image!,
                      ),
              const SizedBox(
                height: 15,
              ),
              Text(
                name!,
                style: TextStyle(
                    color: dark ? AppColor.white : AppColor.black,
                    fontSize: 18),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Calling",
                style: TextStyle(color: AppColor.grey, fontSize: 12),
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 80,
          decoration: BoxDecoration(
              color: dark ? AppColor.callNavDark : AppColor.callNavLight,
              border: Border(
                bottom: CustomBorderStyle.defaultBorderSideStyle,
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.volume_up_outlined,
                    color: dark ? AppColor.white : AppColor.grey,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    isAudioCall
                        ? Icons.videocam_outlined
                        : Icons.videocam_off_outlined,
                    color: dark ? AppColor.white : AppColor.grey,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.mic_off_outlined,
                    color: dark ? AppColor.white : AppColor.grey,
                  )),
              IconButton(
                  style: IconButton.styleFrom(backgroundColor: AppColor.red),
                  onPressed: () => Get.back(),
                  icon: Icon(
                    Icons.call_end_outlined,
                    color: AppColor.white,
                  )),
            ],
          ),
        ));
  }
}
