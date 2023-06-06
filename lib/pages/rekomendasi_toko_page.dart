import 'package:flutter/material.dart';
import 'package:jejak_alam/Widget/searchbar.dart';
import 'package:jejak_alam/Widget/toko_card.dart';
import 'package:jejak_alam/theme.dart';

class RekomendasiToko extends StatelessWidget {
  const RekomendasiToko({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: primaryTextColor,
          ),
        ),
        backgroundColor: bgcolor1,
        elevation: 0,
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

    Widget topHeader() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 4,
          ),
          Text(
            'Rekomendasi toko alat sewa',
            style:
                primaryTextStyle.copyWith(fontSize: 15, fontWeight: semibold),
          ),
          const SizedBox(
            height: 4,
          ),
          SearchBar(),
        ],
      );
    }

    Widget bodyContent() {
      return Container(
        margin: const EdgeInsets.only(bottom: 30),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 21,
            ),
            Text(
              'Pilihan toko lokasi di Bandung',
              style:
                  primaryTextStyle.copyWith(fontSize: 15, fontWeight: semibold),
            ),
            const SizedBox(
              height: 5,
            ),
            const TokoCard(),
            const TokoCard(),
            const TokoCard(),
            const TokoCard(),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 30.0),
        child: ListView(
          children: [
            topHeader(),
            bodyContent(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgcolor1,
      appBar: header(),
      body: content(),
    );
  }
}
