import 'package:flutter/material.dart';
import 'package:jejak_alam/Widget/gridCard.dart';
import 'package:jejak_alam/Widget/searchbar.dart';
import 'package:jejak_alam/theme.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/home', (route) => false);
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: primaryTextColor,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
            color: primaryTextColor,
          )
        ],
        elevation: 0,
        backgroundColor: bgcolor1,
      );
    }

    Widget text() {
      return Container(
        margin: const EdgeInsets.only(
          top: 26,
          left: 20,
        ),
        child: Text(
          'Pilihan Gunung di Jawa Barat',
          style: primaryTextStyle.copyWith(
            fontSize: 15,
            fontWeight: semibold,
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBar(),
              text(),
              const SizedBox(
                height: 9,
              ),
              const GridCard(),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: header(),
      body: content(),
    );
  }
}
