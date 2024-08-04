import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({
    super.key,
    this.height = 48
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset("assets/demo_friends_avatars/p1.png"),
      ),
    );
  }
}
