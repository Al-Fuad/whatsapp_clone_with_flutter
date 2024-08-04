import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:whatsapp_clone_with_flutter/utils/constants/app_color.dart';
import 'package:whatsapp_clone_with_flutter/utils/helpers/helper_function.dart';

class SingleMessageContainer extends StatelessWidget {
  const SingleMessageContainer({super.key, required this.user, required this.text});

  final bool user;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: user ? Alignment.centerRight : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: 10, minWidth: 90, maxWidth: 300),
        child: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: user
                ? AppColor.messageBackgroundUser
                : AppColor.messageBackgroundFriend,
          ),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  text,
                  style: TextStyle(fontSize: 11),
                ),
              ),
              Positioned(
                  right: 1,
                  bottom: 1,
                  child: Row(
                    children: [
                      Text(
                        "10:47",
                        style: TextStyle(fontSize: 8),
                      ),
                      Icon(
                        Icons.keyboard_double_arrow_up_outlined,
                        size: 8,
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
