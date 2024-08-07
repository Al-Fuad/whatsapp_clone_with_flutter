import 'package:flutter/material.dart';
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
    this.leadingWidth = 50,
    this.showBackButtonWithImage = false,
    this.titleSpacing = 0,
    this.moreButtonText = const [],
    this.image,
    this.centerTitle = false,
    this.titleSize,
    this.showBorder = true,
  });

  final String? title;
  final String? image;
  final bool isBold;
  final bool showBackButton;
  final bool showBackButtonWithImage;
  final bool centerTitle;
  final bool showBorder;
  final Widget? titleWidget;
  final double leadingWidth, titleSpacing;
  final double? titleSize;
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
    ActionList actionListAppBar = ActionList();
    actionListAppBar.moreButtonText = moreButtonText;
    actionListAppBar.moreButtonPressed = moreButtonPressed;
    actionListAppBar.searchButtonPressed = searchButtonPressed;
    actionListAppBar.cameraButtonPressed = cameraButtonPressed;
    actionListAppBar.messageButtonPressed = messageButtonPressed;
    actionListAppBar.audioCallButtonPressed = audioCallButtonPressed;
    actionListAppBar.videoCallButtonPressed = videoCallButtonPressed;
    return AppBar(
      titleSpacing: showBackButtonWithImage ? titleSpacing : null,
      title: (title != null)
          ? Text(
              title!,
              style: TextStyle(
                fontWeight: isBold ? FontWeight.w600 : null,
                fontSize: (titleSize != null) ? titleSize : null,
              ),
            )
          : (titleWidget != null)
              ? titleWidget
              : null,
      centerTitle: centerTitle,
      backgroundColor:
          dark ? AppColor.backgroundDark : AppColor.backgroundLight,
      leadingWidth:
          (showBackButton || showBackButtonWithImage) ? leadingWidth : null,
      leading: showBackButton
          ? IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Iconsax.arrow_left,
                size: 25,
              ))
          : showBackButtonWithImage
              ? IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Row(
                    children: [
                      const Icon(
                        Iconsax.arrow_left,
                        size: 25,
                      ),
                      CircularImage(image: image!),
                    ],
                  ))
              : null,
      shape: showBorder
          ? Border(
              bottom: CustomBorderStyle.defaultBorderSideStyle,
            )
          : null,
      actions: actionListAppBar.actions(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
