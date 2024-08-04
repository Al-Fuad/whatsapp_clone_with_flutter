import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:whatsapp_clone_with_flutter/common/style/custom_border_style.dart';

import '../../../utils/constants/app_color.dart';
import '../../../utils/helpers/helper_function.dart';
import '../button/circular_image_button.dart';

class WAAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WAAppBar(
      {super.key,
      this.title,
      this.showBackButton = false,
      this.isBold = false,
      this.videoCallButtonPressed,
      this.audioCallButtonPressed,
      this.messageButtonPressed,
      this.cameraButtonPressed,
      this.searchButtonPressed,
      this.moreButtonPressed,
      this.titleWidget,
      this.leadingWidth = 40,
      this.showBackButtonWithImage = false, this.titleSpacing = 0});

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
  final VoidCallback? moreButtonPressed;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode();
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
      leadingWidth: (showBackButton || showBackButtonWithImage) ? leadingWidth : null,
      leading: showBackButton
          ? IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(
                Iconsax.arrow_left,
                size: 25,
              ))
          : showBackButtonWithImage ? IconButton(
        onPressed: () => Get.back(),
    icon: Row(
      children: [
        const Icon(
        Iconsax.arrow_left,
        size: 25,
        ),
        CircularImageButton(),
      ],
    )) : null,
      shape: Border(
        bottom: CustomBorderStyle.defaultBorderSideStyle,
      ),
      actions: [
        if (videoCallButtonPressed != null)
          IconButton(
            iconSize: 22,
            icon: const Icon(
              Icons.videocam_outlined,
            ),
            onPressed: videoCallButtonPressed,
          ),
        if (audioCallButtonPressed != null)
          IconButton(
            iconSize: 22,
            icon: const Icon(
              Icons.call_outlined,
            ),
            onPressed: audioCallButtonPressed,
          ),
        if (messageButtonPressed != null)
          IconButton(
            iconSize: 22,
            icon: const Icon(
              Icons.message_rounded,
            ),
            onPressed: messageButtonPressed,
          ),
        if (cameraButtonPressed != null)
          IconButton(
            iconSize: 22,
            icon: const Icon(
              Icons.camera_alt_outlined,
            ),
            onPressed: cameraButtonPressed,
          ),
        if (searchButtonPressed != null)
          IconButton(
            iconSize: 22,
            icon: const Icon(Icons.search),
            onPressed: searchButtonPressed,
          ),
        if (moreButtonPressed != null)
          IconButton(
            iconSize: 22,
            icon: const Icon(Icons.more_vert),
            onPressed: moreButtonPressed,
          ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
