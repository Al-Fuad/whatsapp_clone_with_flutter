import 'package:flutter/material.dart';
import 'package:whatsapp_clone_with_flutter/common/style/custom_border_style.dart';
import 'package:whatsapp_clone_with_flutter/utils/helpers/helper_function.dart';

import '../../../../common/widget/appbar/wa_app_bar.dart';
import '../../../../common/widget/image/circular_image.dart';
import '../../../../utils/constants/app_color.dart';

class Communities extends StatelessWidget {
  const Communities({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode();
    return Scaffold(
      backgroundColor: dark ? AppColor.black : Color(0xFFF3F3F3),
      appBar: WAAppBar(
        title: "Communities",
        cameraButtonPressed: (){},
        moreButtonText: [],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                  color: dark ? AppColor.backgroudDark : AppColor.backgroudLight,
                child: ListTile(
                  onTap: (){},
                  leading: Stack(
                    children: [
                      const CircularImage(),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          decoration: BoxDecoration(
                              color: AppColor.primary,
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: AppColor.black)),
                          child: Icon(
                            Icons.add,
                            color: AppColor.black,
                            size: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                  title: Text("New Community"),
                ),
              ),
              SizedBox(height: 8,),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border(bottom: CustomBorderStyle.defaultBorderSideStyle),
                    color: dark ? AppColor.backgroudDark : AppColor.backgroudLight,
                    ),
                    child: ListTile(
                      onTap: (){},
                      leading: CircularImage(),
                      title: Text("New Community"),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    color: dark ? AppColor.backgroudDark : AppColor.backgroudLight,
                    child: ListTile(
                      onTap: (){},
                      leading: CircularImage(),
                      title: Text("New Community"),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    color: dark ? AppColor.backgroudDark : AppColor.backgroudLight,
                    child: ListTile(
                      onTap: (){},
                      leading: CircularImage(),
                      title: Text("New Community"),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    color: dark ? AppColor.backgroudDark : AppColor.backgroudLight,
                    child: ListTile(
                      onTap: (){},
                      leading: CircularImage(),
                      title: Text("New Community"),
                    ),
                  ),
                  Container(
                    height: 70,
                    padding: EdgeInsets.all(10),
                    color: dark ? AppColor.backgroudDark : AppColor.backgroudLight,
                    child: ListTile(
                      onTap: (){},
                      leading: Icon(Icons.keyboard_arrow_right),
                      title: Text("View All"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8,),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border(bottom: CustomBorderStyle.defaultBorderSideStyle),
                    color: dark ? AppColor.backgroudDark : AppColor.backgroudLight,
                    ),
                    child: ListTile(
                      onTap: (){},
                      leading: CircularImage(),
                      title: Text("New Community"),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    color: dark ? AppColor.backgroudDark : AppColor.backgroudLight,
                    child: ListTile(
                      onTap: (){},
                      leading: CircularImage(),
                      title: Text("New Community"),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    color: dark ? AppColor.backgroudDark : AppColor.backgroudLight,
                    child: ListTile(
                      onTap: (){},
                      leading: CircularImage(),
                      title: Text("New Community"),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    color: dark ? AppColor.backgroudDark : AppColor.backgroudLight,
                    child: ListTile(
                      onTap: (){},
                      leading: CircularImage(),
                      title: Text("New Community"),
                    ),
                  ),
                  Container(
                    height: 70,
                    padding: EdgeInsets.all(10),
                    color: dark ? AppColor.backgroudDark : AppColor.backgroudLight,
                    child: ListTile(
                      onTap: (){},
                      leading: Icon(Icons.keyboard_arrow_right),
                      title: Text("View All"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8,),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border(bottom: CustomBorderStyle.defaultBorderSideStyle),
                    color: dark ? AppColor.backgroudDark : AppColor.backgroudLight,
                    ),
                    child: ListTile(
                      onTap: (){},
                      leading: CircularImage(),
                      title: Text("New Community"),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    color: dark ? AppColor.backgroudDark : AppColor.backgroudLight,
                    child: ListTile(
                      onTap: (){},
                      leading: CircularImage(),
                      title: Text("New Community"),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    color: dark ? AppColor.backgroudDark : AppColor.backgroudLight,
                    child: ListTile(
                      onTap: (){},
                      leading: CircularImage(),
                      title: Text("New Community"),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    color: dark ? AppColor.backgroudDark : AppColor.backgroudLight,
                    child: ListTile(
                      onTap: (){},
                      leading: CircularImage(),
                      title: Text("New Community"),
                    ),
                  ),
                  Container(
                    height: 70,
                    padding: EdgeInsets.all(10),
                    color: dark ? AppColor.backgroudDark : AppColor.backgroudLight,
                    child: ListTile(
                      onTap: (){},
                      leading: Icon(Icons.keyboard_arrow_right),
                      title: Text("View All"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
