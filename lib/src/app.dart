import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/src/components/image_data.dart';
import 'package:instagram_clone/src/controller/bottom_nav_controller.dart';
import 'package:instagram_clone/src/pages/home.dart';
import 'package:instagram_clone/src/pages/search.dart';

class App extends GetView<BottomNavController> {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: controller.willPopAction,
      child: Obx(
        () => Scaffold(
          body: IndexedStack(
            index: controller.pageIndex.value,
            children: [
              const Home(),
              Navigator(
                key: controller.searchPageNavigationKey,
                onGenerateRoute: (routeSetting) {
                  return MaterialPageRoute(
                    builder: (context) => const Search(),
                  );
                },
              ),
              Container(
                child: const Center(child: Text('UPLOAD')),
              ),
              Container(
                child: const Center(child: Text('ACTIVITY')),
              ),
              Container(
                child: const Center(child: Text('MYPAGE')),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: controller.pageIndex.value,
            elevation: 0,
            onTap: controller.changeBottomNav,
            items: [
              BottomNavigationBarItem(
                icon: ImageData(IconsPaths.homeOff),
                activeIcon: ImageData(IconsPaths.homeOn),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: ImageData(IconsPaths.searchOff),
                activeIcon: ImageData(IconsPaths.searchOn),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: ImageData(IconsPaths.uploadIcon),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: ImageData(IconsPaths.activeOff),
                activeIcon: ImageData(IconsPaths.activeOn),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                ),
                label: 'home',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
