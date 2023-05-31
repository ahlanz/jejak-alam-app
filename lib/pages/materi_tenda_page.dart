import 'package:flutter/material.dart';
import 'package:jejak_alam/Widget/langkahCard.dart';
import 'package:jejak_alam/theme.dart';

class TendaPage extends StatelessWidget {
  const TendaPage({super.key});

  @override
  Widget build(BuildContext context) {
    String materi =
        "Tenda merupakan rumah\nbagi pendaki gunung,\ntempat kita melepas\nlelah setelah menempuh\nbeberapa lama\nperjalanan mendaki\nsuatu gunung.Ada\nbeberapa langkah\ncara menyusun\ntenda yang\nbaik dan benar,simak\ndibawah ini";
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
        margin: const EdgeInsets.only(top: 34),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Panduan menyusun tenda',
              style:
                  primaryTextStyle.copyWith(fontSize: 15, fontWeight: semibold),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/gambar_materi.png',
                  width: 120,
                  height: 260,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 10,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    materi,
                    textAlign: TextAlign.right,
                    softWrap: true,
                    style: primaryTextStyle.copyWith(
                      fontSize: 15,
                      fontWeight: semibold,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      );
    }

    Widget langkah() {
      return Container(
        margin: const EdgeInsets.only(top: 36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Langkah-langkah',
              style:
                  primaryTextStyle.copyWith(fontSize: 15, fontWeight: semibold),
            ),
            const SizedBox(
              height: 5,
            ),
            const LangkahCard(),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: [
            penjelasan(),
            langkah(),
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
