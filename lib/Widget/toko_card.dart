import 'package:flutter/material.dart';
import 'package:jejak_alam/theme.dart';

class TokoCard extends StatelessWidget {
  const TokoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/toko-page');
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(
          top: 12,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 13),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                'assets/images/toko_gunung.jpg',
                width: 115,
                height: 125,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 23,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 153,
                  child: Text(
                    'Bougenville Outdoor',
                    style: primaryTextStyle.copyWith(
                        fontSize: 15, fontWeight: extrabold),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: 140,
                  child: Text(
                    'Jam Operasional : Setiap hari, 08.00 – 19.00 WIB',
                    style: primaryTextStyle.copyWith(
                      fontSize: 10,
                      fontWeight: semibold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: 140,
                  child: Text(
                    'Telepon : +6289660361569',
                    style: primaryTextStyle.copyWith(
                      fontSize: 10,
                      fontWeight: semibold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: 140,
                  child: Text(
                    'Estimasi Harga : Mulai dari Rp15.000',
                    style: primaryTextStyle.copyWith(
                      fontSize: 10,
                      fontWeight: semibold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
