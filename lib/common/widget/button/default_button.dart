import 'package:flutter/material.dart';

import '../../../utils/constants/app_color.dart';
import '../../../utils/helpers/helper_function.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    required this.text,
    required this.next,
  });

  final String text;
  final VoidCallback next;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode();
    return Padding(
      padding: const EdgeInsets.all(14),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: AppColor.secondary),
          onPressed: next,
          child: Text(
            text,
            style: TextStyle(color: dark ? AppColor.black : AppColor.white),
          ),
        ),
      ),
    );
  }
}
