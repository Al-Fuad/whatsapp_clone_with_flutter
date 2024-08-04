import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone_with_flutter/common/style/border_style.dart';
import 'package:whatsapp_clone_with_flutter/features/chats/screens/home/widget/archived.dart';
import 'package:whatsapp_clone_with_flutter/features/chats/screens/home/widget/single_chat_tab.dart';
import 'package:whatsapp_clone_with_flutter/utils/constants/app_color.dart';
import 'package:whatsapp_clone_with_flutter/utils/helpers/helper_function.dart';

import '../../../../bottom_nav.dart';
import '../../../../common/widget/appbar/wa_app_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode();
    return Scaffold(
      backgroundColor: dark ? AppColor.backgroudDark : AppColor.backgroudLight,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [
        SliverAppBar(
          floating: true,
          title: const Text("WhatsApp", style: TextStyle(fontWeight: FontWeight.w600),),
          centerTitle: false,
          backgroundColor: dark ? AppColor.backgroudDark : AppColor.backgroudLight,
          shape: Border(
              bottom: CustomBorderStyle.defaultBorderSideStyle,
          ),
          actions: [
            IconButton(
              iconSize: 22,
              icon: const Icon(
                Icons.camera_alt_outlined,
              ),
              onPressed: (){},
            ),
            IconButton(
              iconSize: 22,
              icon: const Icon(Icons.search),
              onPressed: (){},
            ),
            IconButton(
              iconSize: 22,
              icon: const Icon(Icons.more_vert),
              onPressed: (){},
            ),
          ],
        ),
      ],body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: () => Get.to(() => const Archived()),
              highlightColor: AppColor.secondaryDark,
              splashFactory: NoSplash.splashFactory,
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    const Padding(padding: EdgeInsets.symmetric(horizontal: 7),child: Icon(Icons.archive_outlined)),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "    Archived",
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            "9",
                            style: TextStyle(color: AppColor.primary),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SingleChatTab(),
            const SingleChatTab(),
            const SingleChatTab(),
            const SingleChatTab(),
            const SingleChatTab(),
            const SingleChatTab(),
            const SingleChatTab(),
            const SingleChatTab(),
            const SingleChatTab(),
            const SingleChatTab(),
            const SingleChatTab(),
            const SingleChatTab(),
            const SingleChatTab(),
            const SingleChatTab(),
            const SingleChatTab(),
          ],
        ),
      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        backgroundColor: AppColor.primary,
        child: Icon(Icons.add_comment, color: AppColor.black,),
      ),

      // bottomNavigationBar: const BottomNav(),
    );
  }
}
