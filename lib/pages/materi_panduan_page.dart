import 'package:flutter/material.dart';
import 'package:jejak_alam/theme.dart';

class MateriPage extends StatelessWidget {
  const MateriPage({super.key});

  @override
  Widget build(BuildContext context) {
    String materi =
        " Mendaki gunung merupakan salah\n satu pilihan orang untuk menikmati\n wisata alam. Agar mendapatkan\n kenyamanan dan keamanan ketika\n mendaki gunung, pendaki wajib\n mengetahui setidaknya dasar materi\n pendakian seperti, membangun tenda\n yang baik,persiapan logistik dan\n kesehatan diri.";

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

    Widget penjelasan() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Materi Panduan mendaki',
            style:
                primaryTextStyle.copyWith(fontSize: 15, fontWeight: semibold),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                materi,
                style: primaryTextStyle.copyWith(
                  fontSize: 10,
                  fontWeight: light,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              Image.asset(
                'assets/images/panduan_mendaki.png',
                width: 120,
              )
            ],
          )
        ],
      );
    }

    Widget cardMateri() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 12,
          ),
          Text(
            'Pilihan materi',
            style:
                primaryTextStyle.copyWith(fontSize: 15, fontWeight: semibold),
          ),
          const SizedBox(
            height: 8,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/materi-tenda');
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
              decoration: BoxDecoration(
                color: const Color(0xff70B77E),
                borderRadius: BorderRadius.circular(12),
              ),
              width: double.infinity,
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Materi\nTenda',
                    style: cardTextStyle.copyWith(
                        fontSize: 30, fontWeight: extrabold),
                  ),
                  Image.asset(
                    'assets/images/materi_tenda.png',
                    width: 120,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/materi-persiapan');
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
              decoration: BoxDecoration(
                color: const Color(0xffFF5B5B),
                borderRadius: BorderRadius.circular(12),
              ),
              width: double.infinity,
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Materi\npersiapan',
                    style: cardTextStyle.copyWith(
                        fontSize: 30, fontWeight: extrabold),
                  ),
                  Image.asset(
                    'assets/images/materi_persiapan.png',
                    width: 120,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
            decoration: BoxDecoration(
              color: const Color(0xffB4AAF2),
              borderRadius: BorderRadius.circular(12),
            ),
            width: double.infinity,
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Materi\nkesehatan\nmendaki',
                  overflow: TextOverflow.visible,
                  style: cardTextStyle.copyWith(
                      fontSize: 30, fontWeight: extrabold),
                ),
                Image.asset(
                  'assets/images/materi_kesehatan.png',
                  width: 120,
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget content() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 17.0),
        width: double.infinity,
        child: ListView(
          children: [
            penjelasan(),
            cardMateri(),
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
