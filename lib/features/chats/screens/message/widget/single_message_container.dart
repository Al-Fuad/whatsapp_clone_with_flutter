import 'package:flutter/material.dart';
import 'package:whatsapp_clone_with_flutter/utils/constants/app_color.dart';
import 'package:whatsapp_clone_with_flutter/utils/helpers/helper_function.dart';

class SingleMessageContainer extends StatelessWidget {
  const SingleMessageContainer(
      {super.key,
      this.user = true,
      required this.text,
      required this.time,
      this.seen = true});

  final bool user;
  final bool seen;
  final String text;
  final String time;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode();
    return Align(
      alignment: user ? Alignment.centerRight : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints:
            const BoxConstraints(minHeight: 10, minWidth: 120, maxWidth: 300),
        child: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: user
                ? dark
                    ? AppColor.messageBackgroundUserDark
                    : AppColor.messageBackgroundUserLight
                : dark
                    ? AppColor.messageBackgroundFriendDark
                    : AppColor.messageBackgroundFriendLight,
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 8, top: 8, bottom: 15, right: 8),
                child: Text(
                  text,
                  style: const TextStyle(fontSize: 13),
                ),
              ),
              Positioned(
                  right: 4,
                  bottom: 1,
                  child: Row(
                    children: [
                      Text(
                        time,
                        style: const TextStyle(fontSize: 10),
                      ),
                      const SizedBox(
                        width: 1,
                      ),
                      if (user)
                        Icon(
                          Icons.done_all,
                          size: 12,
                          color: seen ? AppColor.blue : AppColor.grey,
                        )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
