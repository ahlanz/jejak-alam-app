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
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: primaryTextColor,
          ),
        ),
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

    return Scaffold(
      appBar: barCustom(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              SizedBox(
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
