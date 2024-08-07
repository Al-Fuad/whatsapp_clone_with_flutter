import 'package:flutter/material.dart';
import 'package:whatsapp_clone_with_flutter/utils/helpers/helper_function.dart';

import '../../utils/constants/app_color.dart';

class CustomBorderStyle {
  static final dark = HelperFunctions.isDarkMode();
  static BorderSide defaultBorderSideStyle = BorderSide(
      color: dark ? AppColor.defaultBorderDark : AppColor.defaultBorderLight,
      width: 1);

  static Border defaultBorderStyle = Border.all(
      color: dark ? AppColor.defaultBorderDark : AppColor.defaultBorderLight,
      width: 1);
}
