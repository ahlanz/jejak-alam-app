import 'package:flutter/material.dart';
import 'package:jejak_alam/Widget/searchbar.dart';
import 'package:jejak_alam/theme.dart';

class CuacaPage extends StatelessWidget {
  const CuacaPage({super.key});

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

    Widget pencarian() {
      return SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Perkiraan cuaca',
              style:
                  primaryTextStyle.copyWith(fontSize: 15, fontWeight: semibold),
            ),
            const SizedBox(
              height: 4,
            ),
            SearchBar()
          ],
        ),
      );
    }

    Widget cuacaUpdate() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 16),
        child: Column(
          children: [
            Image.asset(
              'assets/images/logo_cuaca.png',
              width: 100,
            ),
            Text(
              '30°C',
              style: primaryTextStyle.copyWith(
                fontSize: 30,
                fontWeight: extrabold,
                shadows: [
                  Shadow(
                    color:
                        Colors.black.withOpacity(0.5), // Set the shadow color
                    blurRadius: 5, // Set the blur radius
                    offset: const Offset(2, 2), // Set the offset
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget kondisiCuaca() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 40, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Lokasi di Gunung Putri lembang',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: semibold,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 9,
                vertical: 27,
              ),
              width: 310,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CERAH',
                    style: primaryTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: extrabold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 146,
                        child: Text(
                          'Perkiraan Cuaca hari ini aman untuk melakukan pendakian,tetaplah berhati-hati dan selalu waspada.',
                          style: primaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: medium,
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/images/kondisi_cuaca.png',
                        width: 140,
                      )
                    ],
                  )
                ],
              ),
            ),
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
            pencarian(),
            cuacaUpdate(),
            kondisiCuaca(),
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
