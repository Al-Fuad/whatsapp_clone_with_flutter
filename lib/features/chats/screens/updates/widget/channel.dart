import 'package:flutter/material.dart';

import '../../../../../common/widget/image/circular_image.dart';
import '../../../../../utils/constants/app_color.dart';
import '../../../../../utils/helpers/helper_function.dart';

class Channel extends StatelessWidget {
  const Channel({
    super.key,
    required this.name,
    required this.image,
  });

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode();
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
            color:
                dark ? AppColor.defaultBorderDark : AppColor.defaultBorderLight,
            width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              CircularImage(
                image: image,
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                    decoration: BoxDecoration(
                        color: dark ? AppColor.black : AppColor.white,
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      Icons.verified,
                      color: AppColor.primary,
                      size: 15,
                    )),
              )
            ],
          ),
          Text(name),
          SizedBox(
            height: 30,
            width: 110,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: dark
                        ? AppColor.secondaryDark
                        : AppColor.secondaryLight),
                onPressed: () {},
                child: Text(
                  "Follow",
                  style: TextStyle(
                      color: dark
                          ? AppColor.secondaryLight
                          : AppColor.secondaryDark),
                )),
          ),
        ],
      ),
    );
  }
}
