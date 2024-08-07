import 'package:flutter/material.dart';

import '../../../../../common/style/custom_border_style.dart';
import '../../../../../common/widget/image/circular_image.dart';
import '../../../../../utils/constants/app_color.dart';
import '../../../../../utils/helpers/helper_function.dart';

class SingleCommunity extends StatelessWidget {
  const SingleCommunity({
    super.key,
    required this.name,
    required this.image,
    required this.groupNames,
    required this.groupImages,
  });

  final String name;
  final String image;
  final List<String> groupNames;
  final List<String> groupImages;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode();
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border(bottom: CustomBorderStyle.defaultBorderSideStyle),
            color: dark ? AppColor.backgroundDark : AppColor.backgroundLight,
          ),
          child: ListTile(
            onTap: () {},
            leading: CircularImage(
              image: image,
            ),
            title: Text(name),
          ),
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: groupNames.length,
          itemBuilder: (BuildContext context, int index) => (index < 3)
              ? Container(
                  padding: const EdgeInsets.all(10),
                  color:
                      dark ? AppColor.backgroundDark : AppColor.backgroundLight,
                  child: ListTile(
                    onTap: () {},
                    leading: CircularImage(
                      image: groupImages[index],
                    ),
                    title: Text(groupNames[index]),
                  ),
                )
              : null,
        ),
        if (groupNames.length > 3)
          Container(
            height: 70,
            padding: const EdgeInsets.all(10),
            color: dark ? AppColor.backgroundDark : AppColor.backgroundLight,
            child: ListTile(
              onTap: () {},
              leading: const Icon(Icons.keyboard_arrow_right),
              title: const Text("View All"),
            ),
          ),
      ],
    );
  }
}
