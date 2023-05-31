import 'package:flutter/material.dart';
import 'package:jejak_alam/Widget/layanan_card.dart';
import 'package:jejak_alam/theme.dart';

import '../../Widget/gridCard.dart';
import '../../Widget/searchbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget barCustom() {
      return AppBar(
        backgroundColor: bgcolor1,
        elevation: 0,
        // leading:Icon(
        //     Icons.menu,
        //     color: primaryTextColor,
        //   ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none,
                color: primaryTextColor,
              ),
            ),
          )
        ],
      );
    }

    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Mau Mendaki kemana \nhari ini?',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: medium,
              ),
              maxLines: 2,
            ),
            Image.asset(
              'assets/images/foto_user.png',
              width: 40,
            ),
          ],
        ),
      );
    }

    Widget layanan() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          children: [
            Text(
              'Layanan',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: semibold,
              ),
            ),
          ],
        ),
      );
    }

    Widget disarankan() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 12,
        ),
        child: Text(
          'Disarankan untuk kamu',
          style: primaryTextStyle.copyWith(
            fontSize: 15,
            fontWeight: semibold,
          ),
        ),
      );
    }

    Widget searchBar() {
      return Container(
        margin: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: SearchBar(),
      );
    }

    Widget listDrawer() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.navigation,
                  color: primaryTextColor,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  'Mulai Mendaki',
                  style: primaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: medium,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 17,
            ),
            Row(
              children: [
                Icon(
                  Icons.bookmark,
                  color: primaryTextColor,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  'Tersimpan',
                  style: primaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: medium,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 17,
            ),
            Row(
              children: [
                Icon(
                  Icons.save,
                  color: primaryTextColor,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  'Download Peta offline',
                  style: primaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: medium,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 17,
            ),
            Row(
              children: const [
                Icon(
                  Icons.logout,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Log out',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 12,
                      fontWeight: FontWeight.w300),
                )
              ],
            ),
            const SizedBox(
              height: 80.0,
            ),
            const Divider(
              thickness: 1,
              color: Colors.black,
            ),
            const Text(
              'Bantuan',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Colors.grey,
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      appBar: barCustom(),
      drawer: Drawer(
        
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
            vertical: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset(
                'assets/images/jejak_logo.png',
                width: 90,
              ),
              SizedBox(
                width: 250,
                child: Text(
                  'Jejak Alam',
                  style: primaryTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: extrabold,
                  ),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const Divider(
                thickness: 2,
                color: Colors.black,
              ),
              listDrawer()
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              const SizedBox(
                height: 10,
              ),
              searchBar(),
              layanan(),
              CardSlider(),
              disarankan(),
              GridCard(),
            ],
          ),
        ),
      ),
    );
  }
}
