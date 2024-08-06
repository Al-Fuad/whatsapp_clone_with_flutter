import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:whatsapp_clone_with_flutter/common/style/custom_border_style.dart';
import 'package:whatsapp_clone_with_flutter/common/widget/appbar/action_list.dart';

import '../../../utils/constants/app_color.dart';
import '../../../utils/helpers/helper_function.dart';
import '../image/circular_image.dart';

class WAAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WAAppBar({
    super.key,
    this.title,
    this.showBackButton = false,
    this.isBold = false,
    this.videoCallButtonPressed,
    this.audioCallButtonPressed,
    this.messageButtonPressed,
    this.cameraButtonPressed,
    this.searchButtonPressed,
    this.moreButtonPressed = const [],
    this.titleWidget,
    this.leadingWidth = 40,
    this.showBackButtonWithImage = false,
    this.titleSpacing = 0,
    this.moreButtonText = const [],
  });

  final String? title;
  final bool isBold;
  final bool showBackButton;
  final bool showBackButtonWithImage;
  final Widget? titleWidget;
  final double leadingWidth, titleSpacing;
  final VoidCallback? videoCallButtonPressed;
  final VoidCallback? audioCallButtonPressed;
  final VoidCallback? messageButtonPressed;
  final VoidCallback? cameraButtonPressed;
  final VoidCallback? searchButtonPressed;
  final List<Widget> moreButtonPressed;
  final List<String> moreButtonText;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode();
    ActionList.moreButtonText = moreButtonText;
    ActionList.moreButtonPressed = moreButtonPressed;
    ActionList.searchButtonPressed = searchButtonPressed;
    ActionList.cameraButtonPressed = cameraButtonPressed;
    ActionList.messageButtonPressed = messageButtonPressed;
    ActionList.audioCallButtonPressed = audioCallButtonPressed;
    ActionList.videoCallButtonPressed = videoCallButtonPressed;
    return AppBar(
      titleSpacing: showBackButtonWithImage ? titleSpacing : null,
      title: (title != null)
          ? Text(
              title!,
              style:
                  isBold ? const TextStyle(fontWeight: FontWeight.w600) : null,
            )
          : (titleWidget != null)
              ? titleWidget
              : null,
      centerTitle: false,
      backgroundColor: dark ? AppColor.backgroudDark : AppColor.backgroudLight,
      leadingWidth:
          (showBackButton || showBackButtonWithImage) ? leadingWidth : null,
      leading: showBackButton
          ? IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(
                Iconsax.arrow_left,
                size: 25,
              ))
          : showBackButtonWithImage
              ? IconButton(
                  onPressed: () => Get.back(),
                  icon: const Row(
                    children: [
                      Icon(
                        Iconsax.arrow_left,
                        size: 25,
                      ),
                      CircularImage(),
                    ],
                  ))
              : null,
      shape: Border(
        bottom: CustomBorderStyle.defaultBorderSideStyle,
      ),
      actions: ActionList.actions(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
