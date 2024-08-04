import 'package:flutter/material.dart';
import 'package:whatsapp_clone_with_flutter/common/style/custom_border_style.dart';
import 'package:whatsapp_clone_with_flutter/utils/constants/app_color.dart';
import 'package:whatsapp_clone_with_flutter/utils/helpers/helper_function.dart';


import 'features/chats/screens/call_log/call_log.dart';
import 'features/chats/screens/communities/communities.dart';
import 'features/chats/screens/home/home.dart';
import 'features/chats/screens/updates/updates.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({
    super.key,
  });

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  List<Widget> body = [
    const Home(),
    const Updates(),
    const Communities(),
    const CallLog(),
  ];

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode();
    final Color selectedPage = dark ? AppColor.secondaryDark : AppColor.secondaryLight;
    final Color selectedIcon = dark ? AppColor.secondaryLight : AppColor.secondaryDark;
    final Color unselectedIcon = dark ? AppColor.white : AppColor.black;
    return Scaffold(
      body: body[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border: Border(
                top: CustomBorderStyle.defaultBorderSideStyle,
            )
        ),

        child: NavigationBar(
          onDestinationSelected: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          selectedIndex: _currentIndex,
          indicatorColor: selectedPage,
          backgroundColor:
              dark ? AppColor.backgroudDark : AppColor.backgroudLight,
          destinations: [
            NavigationDestination(
                icon: (_currentIndex != 0) ? Icon(Icons.chat_outlined, color: unselectedIcon,) : Icon(Icons.chat, color: selectedIcon,),
                label: "Chats"),
            NavigationDestination(
                icon: (_currentIndex != 1) ? Icon(Icons.cloud_outlined, color: unselectedIcon,) : Icon(Icons.cloud, color: selectedIcon,),
                label: "Updates"),
            NavigationDestination(
                icon: (_currentIndex != 2) ? Icon(Icons.people_alt_outlined, color: unselectedIcon,) : Icon(Icons.people_alt, color: selectedIcon,),
                label: "Communities"),
            NavigationDestination(
                icon: (_currentIndex != 3) ? Icon(Icons.call_outlined, color: unselectedIcon,) : Icon(Icons.call, color: selectedIcon,),
                label: "Calls"),
          ],
        ),
      ),
    );
  }
}
