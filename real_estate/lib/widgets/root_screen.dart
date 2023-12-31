import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate/veiw/home/home_screen.dart';
import 'package:real_estate/veiw/settings/settings_page.dart';
import 'package:real_estate/widgets/search_widget.dart';

import '../controller/root_cotrpller.dart';

class RootPage extends StatelessWidget {
  final RootController _rootController = Get.put(RootController());

  RootPage({
    super.key,
  });

  final List<Widget> pages = [
    const HomeScreenPage(),
    const  SearchWidget(),
    const SettingsPage(),
    const SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: IndexedStack(
          index: _rootController.currentIndex.value,
          children: pages,
        ),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _rootController.currentIndex.value,
          showElevation: true,
          itemCornerRadius: 24,
          curve: Curves.easeIn,
          onItemSelected: (index) {
            _rootController.currentIndex.value = index;
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              icon: Icon(Icons.apps),
              title: Text('Home'),
              activeColor: Colors.red,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.search),
              title: Text('Users'),
              activeColor: Colors.purpleAccent,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.person),
              title: Text(
                'Messages test for mes teset test test ',
              ),
              activeColor: Colors.pink,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.settings),
              title: Text('Settings'),
              activeColor: Colors.blue,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
