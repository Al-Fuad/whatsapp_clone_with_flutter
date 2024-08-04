import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';
import 'package:whatsapp_clone_with_flutter/utils/constants/app_color.dart';
import 'package:whatsapp_clone_with_flutter/utils/helpers/helper_function.dart';

class MessageBar extends StatelessWidget {
  const MessageBar({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode();
    return Container(
      padding: EdgeInsets.all(5),
      child: Row(
        children: [
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: dark ? AppColor.messageBar : AppColor.white,
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.emoji_emotions_outlined)),
                Flexible(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: 20.0,
                      maxHeight: 135.0,
                    ),
                    child: Scrollbar(
                      child: TextField(
                        cursorColor: AppColor.white,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(vertical: 5),
                          hintText: "Message",
                          hintStyle: TextStyle(
                            color:AppColor.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.attach_file)),
                IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined))
              ],
            ),
          )),
          SizedBox(
            width: 5,
          ),
          IconButton(
              style: IconButton.styleFrom(backgroundColor: AppColor.primary),
              onPressed: () {},
              icon: Icon(
                Icons.mic,
                color: dark ? AppColor.black : AppColor.white,
              ))
        ],
      ),
    );
  }
}
