import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone_with_flutter/common/style/custom_border_style.dart';
import 'package:whatsapp_clone_with_flutter/common/widget/appbar/wa_app_bar.dart';
import 'package:whatsapp_clone_with_flutter/common/widget/image/circular_image.dart';
import 'package:whatsapp_clone_with_flutter/utils/constants/app_color.dart';
import 'package:whatsapp_clone_with_flutter/utils/helpers/helper_function.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode();
    return Scaffold(
      appBar: const WAAppBar(
        showBackButton: true,
        title: "Profile",
      ),
      backgroundColor:
          dark ? AppColor.backgroundDark : AppColor.backgroundLight,
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Stack(children: [
              const CircularImage(
                length: 130,
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: IconButton(
                      style: IconButton.styleFrom(
                          backgroundColor: AppColor.primary),
                      onPressed: () {},
                      icon: Icon(
                        Icons.camera_alt_outlined,
                        color: dark ? AppColor.black : AppColor.white,
                      )))
            ]),
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            leading: const Column(
              children: [
                Icon(Icons.person_outlined),
              ],
            ),
            title: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name",
                      style: TextStyle(color: AppColor.grey, fontSize: 12),
                    ),
                    const Text(
                      "S M Al Fuad Nur",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit_outlined,
                      color: AppColor.primary,
                    ))
              ],
            ),
            subtitle: Container(
                padding: const EdgeInsets.only(bottom: 5),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: CustomBorderStyle.defaultBorderSideStyle)),
                child: Text(
                  "This is not your username or pin. This name will be visible to your WhatsApp contacts.",
                  style: TextStyle(color: AppColor.grey, fontSize: 12),
                )),
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.exclamationmark_circle),
            title: Container(
              padding: const EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                  border:
                      Border(bottom: CustomBorderStyle.defaultBorderSideStyle)),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About",
                        style: TextStyle(color: AppColor.grey, fontSize: 12),
                      ),
                      const Text(
                        "Available",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.edit_outlined,
                        color: AppColor.primary,
                      ))
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.call_outlined),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Phone",
                  style: TextStyle(color: AppColor.grey, fontSize: 12),
                ),
                const Text(
                  "+880 1851-699135",
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
