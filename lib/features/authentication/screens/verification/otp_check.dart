import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone_with_flutter/common/widget/appbar/wa_app_bar.dart';
import 'package:whatsapp_clone_with_flutter/utils/constants/app_color.dart';
import 'package:whatsapp_clone_with_flutter/utils/helpers/helper_function.dart';
import '../../../../bottom_nav.dart';

class OTPCheck extends StatefulWidget {
  const OTPCheck({super.key});

  @override
  State<OTPCheck> createState() => _OTPCheckState();
}

class _OTPCheckState extends State<OTPCheck> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 5000), () {
      Get.offAll(() => const BottomNav(), transition: Transition.fade);
    });
  }

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode();
    return Scaffold(
      backgroundColor:
          dark ? AppColor.backgroundDark : AppColor.backgroundLight,
      appBar: const WAAppBar(
        centerTitle: true,
        titleSize: 16,
        title: "Verifying your number",
        moreButtonText: ["Help"],
        showBorder: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text:
                              "Waiting to automatically detect an SMS sent to\n+880 1303-729735. ",
                          style: TextStyle(
                              color: dark ? AppColor.white : AppColor.black,
                              fontSize: 12,
                              height: 1.3),
                          children: [
                            TextSpan(
                                text: "Wrong number?",
                                style: TextStyle(color: AppColor.blue)),
                          ]),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 50,
                    child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (_, index) => (index == 2)
                          ? const SizedBox(
                              width: 15,
                            )
                          : const SizedBox(
                              width: 6,
                            ),
                      itemCount: 6,
                      itemBuilder: (_, index) => SizedBox(
                        width: 12,
                        child: TextFormField(
                          cursorColor: AppColor.white,
                          keyboardType: TextInputType.number,
                          autofocus: false,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.zero,
                            isDense: true,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColor.grey,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColor.secondary,
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Didn't receive code?",
                    style: TextStyle(fontSize: 12, color: AppColor.grey),
                  ),
                ],
              ),
            ),
            // DefaultButton(text: "Next", next: () {  },)
          ],
        ),
      ),
    );
  }
}
