import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone_with_flutter/common/widget/appbar/wa_app_bar.dart';
import 'package:whatsapp_clone_with_flutter/common/widget/button/default_button.dart';
import 'package:whatsapp_clone_with_flutter/features/authentication/screens/verification/otp_check.dart';
import 'package:whatsapp_clone_with_flutter/utils/constants/app_color.dart';
import 'package:whatsapp_clone_with_flutter/utils/helpers/helper_function.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode();
    return Scaffold(
      backgroundColor:
          dark ? AppColor.backgroundDark : AppColor.backgroundLight,
      appBar: const WAAppBar(
        centerTitle: true,
        titleSize: 16,
        title: "Enter your phone number",
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
                    padding: const EdgeInsets.symmetric(horizontal: 36),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text:
                              "WhatsApp will need to verify your phone number. Carrier charges may apply. ",
                          style: TextStyle(
                              color: dark ? AppColor.white : AppColor.black,
                              fontSize: 14,
                              height: 1.3),
                          children: [
                            TextSpan(
                                text: "What's my number?",
                                style: TextStyle(color: AppColor.blue)),
                          ]),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      width: 250,
                      child: Column(
                        children: [
                          TextFormField(
                            readOnly: true,
                            autofocus: false,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.zero,
                              isDense: true,
                              suffixIcon: Icon(
                                Icons.arrow_drop_down_outlined,
                                color: AppColor.secondary,
                              ),
                              label: const Center(
                                  child: Text("Bangladesh",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal))),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColor.secondary,
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
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 50,
                                child: TextFormField(
                                  readOnly: true,
                                  autofocus: false,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.zero,
                                    isDense: true,
                                    label: const Center(
                                        child: Text("+880",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight:
                                                    FontWeight.normal))),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: AppColor.secondary,
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
                              SizedBox(
                                width: 190,
                                child: TextFormField(
                                  cursorColor: AppColor.white,
                                  keyboardType: TextInputType.number,
                                  autofocus: false,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.zero,
                                    isDense: true,
                                    label: const Text("Phone number",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal)),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: AppColor.secondary,
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
                            ],
                          ),
                        ],
                      ))
                ],
              ),
            ),
            DefaultButton(text: "Next", next: () => Get.off(const OTPCheck()))
          ],
        ),
      ),
    );
  }
}
