import 'package:flutter/material.dart';

import '../theme.dart';

class MateriKesehatan extends StatelessWidget {
  const MateriKesehatan({super.key});

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
      return Container(
        padding: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Panduan kesehatan',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: semibold,
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/gambar_kesehatan.png',
                  width: 120,
                ),
                const SizedBox(
                  width: 19,
                ),
                SizedBox(
                  width: 158,
                  child: Text(
                    'Mendaki adalah salah satu kegiatan ekstrim yangmenyenangkan. Namun saat mendaki gunung, sebaiknya persiapkan dengan baik kondisi fisik dan juga mental kamu.',
                    style: primaryTextStyle.copyWith(
                        fontSize: 15, fontWeight: semibold),
                  ),
                )
              ],
            )
          ],
        ),
      );
    }

    Widget materi() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 18.0,bottom: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Manfaat fisik',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: semibold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '1. Baik untuk kesehatan jantung\n2. Baik untuk menjaga keseimbangan\n3. Membangun otot tubuh\n4. Meningkatkan kepadatan tulang\n5. Membantu menurunkan berat badan',
              style: primaryTextStyle.copyWith(
                fontSize: 10,
                fontWeight: semibold,
              ),
            ),
            const SizedBox(
              height: 18.0,
            ),
            Text(
              'Manfaat mental',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: semibold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '1. Mendaki menghilangkan stres\n2. Mengisitrahatkan tubuh dari penggunaan teknologi\n3. Meningkatkan harga diri\n4. Mengatasi insomnia\n5. Meningkatkan daya ingat dan fiungsi otak\n6. Mendaki membangun komunitas sosial',
              style: primaryTextStyle.copyWith(
                fontSize: 10,
                fontWeight: semibold,
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: ListView(
          children: [
            penjelasan(),
            materi(),
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
