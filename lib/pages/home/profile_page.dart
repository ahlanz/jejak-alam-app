import 'package:flutter/material.dart';
import 'package:jejak_alam/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: bgcolor1,
      );
    }

    Widget profil() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Row(
          children: [
            ClipOval(
              child: Image.asset(
                'assets/images/foto_user.png',
                width: 120,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Yanto',
                  style: primaryTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: extrabold,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'Saya suka mendaki',
                  style: primaryTextStyle.copyWith(
                      fontSize: 10, fontWeight: semibold),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    border: Border.all(
                      color: const Color(0xff333333),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                    ),
                    child: Text(
                      'Simpan',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: extrabold,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget buttonLogout() {
      return Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 20,
        ),
        height: 30,
        width: 100,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 3),
            ),
          ],
          border: Border.all(
            color: const Color(0xff333333),
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/sign-in', (route) => false);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
          ),
          child: Text(
            'Keluar',
            style: primaryTextStyle.copyWith(
              fontSize: 15,
              fontWeight: extrabold,
            ),
          ),
        ),
      );
    }

    Widget nameInput() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Nama',
                hintStyle: primaryTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: semibold,
                ),
                hintText: 'nama anda',
                labelStyle: primaryTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: semibold,
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget bioInput() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Bio',
                hintStyle: primaryTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: semibold,
                ),
                labelStyle: primaryTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: semibold,
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                hintStyle: primaryTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: semibold,
                ),
                labelStyle: primaryTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: semibold,
                ),
              ),
            )
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        profil(),
        const SizedBox(
          height: 45,
        ),
        nameInput(),
        bioInput(),
        emailInput(),
        buttonLogout(),
      ],
    );
  }
}
