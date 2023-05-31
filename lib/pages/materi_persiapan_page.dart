import 'package:flutter/material.dart';
import 'package:jejak_alam/theme.dart';

class MateriPersiapan extends StatelessWidget {
  const MateriPersiapan({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: bgcolor1,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
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
          ),
        ],
        elevation: 0,
      );
    }

    Widget pengertian() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 13.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 212,
              child: Text(
                'Pentingnya persiapan sebelum mendaki gunung',
                style: primaryTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: semibold,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/gambar_persiapan.png',
                  width: 114,
                ),
                const SizedBox(
                  width: 12,
                ),
                SizedBox(
                  width: 184,
                  child: Text(
                    'Mendaki gunung telah menjadi kegiatan yang populer di segala usia. Namun, mengingat medan yang ditempuh tidaklah mudah, maka persiapan mendaki gunung harus diperhatikan dengan saksama.',
                    style: primaryTextStyle.copyWith(
                      fontSize: 15,
                      fontWeight: semibold,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget materi() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: defaultMargin,bottom: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Persiapan sebelum mendaki',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: semibold,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            SizedBox(
              width: 255,
              child: Text(
                '1. Menyusun rencana hiking\n2. Persiapan fisik dan kebugaran pendaki\n3. Perlengkapan mendaki gunung\n4. Menu makanan pendaki gunung\n5. Perlengkapan tidur\n6. Cara packing carrier\n7. Perlengkapan antihujan\n8. Menentukan lokasi pendirian tenda yang baik\n9. Mempelajari ilmu navigasi darat\n10. Teknik mendaki gunung\n11. Cara survival di gunung\n12. Perlengkapan P3K pendaki gunung\n13. Jalur pendakian gunung\n14. Spot camping terbaik untuk para pendaki',
                style: primaryTextStyle.copyWith(
                  fontSize: 10,
                  fontWeight: semibold,
                ),
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
            pengertian(),
            materi(),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: header(),
      body: content(),
    );
  }
}
