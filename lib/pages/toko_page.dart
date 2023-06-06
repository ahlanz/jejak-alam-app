import 'package:flutter/material.dart';
import 'package:jejak_alam/Widget/alat_toko_card.dart';
import 'package:jejak_alam/theme.dart';

class TokoPage extends StatelessWidget {
  const TokoPage({super.key});

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
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipOval(
            child: Image.asset(
              'assets/images/profil_toko.jpg',
              width: 120,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: 136,
                child: Text(
                  'Jalan Karasak No 3 Moch Toha, Karasak, Astana Anyar Bandung',
                  textAlign: TextAlign.end,
                  style: primaryTextStyle.copyWith(
                      fontSize: 10, fontWeight: semibold),
                ),
              ),
              const SizedBox(
                height: 27,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 4,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                width: 100,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.all(5),
                  ),
                  child: const Icon(
                    Icons.navigation,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    }

    Widget body() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Harga alat sewa Penerangan',
            style:
                primaryTextStyle.copyWith(fontSize: 15, fontWeight: semibold),
          ),
          const CardAlatToko(),
          const CardAlatToko(),
          const CardAlatToko(),
          const CardAlatToko(),
          const CardAlatToko(),
        ],
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 30.0),
        child: ListView(
          children: [
            const SizedBox(height: 19),
            topHeader(),
            const SizedBox(height: 58),
            body(),
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
