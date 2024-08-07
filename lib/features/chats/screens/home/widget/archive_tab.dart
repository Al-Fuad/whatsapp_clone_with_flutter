import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone_with_flutter/utils/helpers/helper_function.dart';

import '../../../../../utils/constants/app_color.dart';
import '../../archived/archived.dart';

class ArchiveTab extends StatelessWidget {
  const ArchiveTab({
    super.key,
    this.name = "Archived",
    this.unread = 0,
    this.icon = Icons.archive_outlined,
  });

  final String name;
  final int unread;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode();
    return InkWell(
      onTap: () => Get.to(() => const Archived()),
      highlightColor: dark ? AppColor.secondaryDark : AppColor.secondaryLight,
      splashFactory: NoSplash.splashFactory,
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                child: Icon(icon)),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "    $name",
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    "$unread",
                    style: TextStyle(color: AppColor.primary),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
