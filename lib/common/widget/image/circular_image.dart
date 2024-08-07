import 'package:flutter/material.dart';

import '../../../utils/constants/image_string.dart';

class CircularImage extends StatelessWidget {
  const CircularImage(
      {super.key,
      this.length = 48,
      this.image,
      this.icon,
      this.fit,
      this.color});

  final double length;
  final String? image;
  final IconData? icon;
  final BoxFit? fit;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: length,
      width: length,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: (icon == null)
            ? Image.asset(
                image ?? ImageString.user1,
                fit: fit,
                color: color,
              )
            : Container(
                height: 50,
                width: 50,
                color: Colors.grey,
                child: Icon(
                  icon,
                  color: Colors.white,
                )),
      ),
    );
  }
}
