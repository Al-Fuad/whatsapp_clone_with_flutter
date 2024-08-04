import 'package:flutter/material.dart';

import '../../../../../common/widget/image/circular_image.dart';
import '../../../../../utils/constants/app_color.dart';
import '../../../../../utils/helpers/helper_function.dart';

class Channel extends StatelessWidget {
  const Channel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode();
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
            color: dark
                ? AppColor.defaultBorderDark
                : AppColor.defaultBorderLight,
            width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              const CircularImage(),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                    decoration: BoxDecoration(
                        color: AppColor.black,
                        borderRadius:
                        BorderRadius.circular(100)),
                    child: Icon(
                      Icons.verified,
                      color: AppColor.primary,
                      size: 15,
                    )),
              )
            ],
          ),
          const Text("WhatsApp"),
          SizedBox(
            height: 30,
            width: 110,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.secondaryDark),
                onPressed: () {},
                child: Text(
                  "Follow",
                  style:
                  TextStyle(color: AppColor.secondaryLight),
                )
            ),
          ),
        ],
      ),
    );
  }
}
