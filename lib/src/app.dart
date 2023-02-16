import 'package:flutter/material.dart';
import 'package:instagram_clone/src/components/image_data.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(),
        body: Container(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: 0,
          elevation: 0,
          onTap: (value) {},
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
      onWillPop: () async {
        return false;
      },
    );
  }
}
