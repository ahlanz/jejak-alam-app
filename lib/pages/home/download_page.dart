import 'package:flutter/material.dart';
import 'package:jejak_alam/Widget/download_card.dart';
import 'package:jejak_alam/theme.dart';

import '../../Widget/gridCard.dart';
import '../../Widget/searchbar.dart';

class DownloadPage extends StatelessWidget {
  const DownloadPage({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: bgcolor1,
        leading: IconButton(
          onPressed: null,
          icon: const Icon(Icons.arrow_back_ios),
          color: primaryTextColor,
        ),
        actions: [
          Icon(
            Icons.notifications,
            color: primaryTextColor,
          )
        ],
        elevation: 0,
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
        margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBar(),
              text(),
              const SizedBox(
                height: 9,
              ),
              const GridDownload(),
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
