import 'package:flutter/material.dart';
import 'package:jejak_alam/pages/home/download_page.dart';
import 'package:jejak_alam/pages/home/explore_page.dart';
import 'package:jejak_alam/pages/home/home_page.dart';
import 'package:jejak_alam/pages/home/profile_page.dart';
import 'package:jejak_alam/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget customButtonNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(10),
        ),
        child: BottomNavigationBar(
          backgroundColor: primaryColor,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(top: 20),
                child: Image.asset(
                  'assets/icons/home_icon.png',
                  width: 20,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(top: 20),
                child: Image.asset(
                  'assets/icons/explore_icon.png',
                  width: 20,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(top: 20),
                child: Image.asset(
                  'assets/icons/download_icon.png',
                  width: 20,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(top: 20),
                child: Image.asset(
                  'assets/icons/profile_icon.png',
                  width: 20,
                ),
              ),
              label: '',
            )
          ],
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return ExplorePage();
          break;
        case 2:
          return DownloadPage();
          break;
        case 3:
          return ProfilePage();
          break;
        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: bgcolor1,
      bottomNavigationBar: customButtonNav(),
      body: body(),
    );
  }
}
