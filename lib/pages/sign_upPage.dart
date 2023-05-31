import 'package:flutter/material.dart';
import 'package:jejak_alam/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Center(
        child: Container(
          margin: EdgeInsets.only(
            top: defaultMargin,
          ),
          child: Text(
            'Register',
            style: primaryTextStyle.copyWith(
              fontSize: 30,
              fontWeight: semibold,
            ),
          ),
        ),
      );
    }

    Widget inputUsername() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: semibold,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: '',
                hintStyle: primaryTextStyle,
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget inputEmail() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: semibold,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: '',
                hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget inputPassword() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: semibold,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: '',
                hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget inputKonfirm() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Konfirmasi Password',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: semibold,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: '',
                hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget buttonRegister() {
      return Container(
        margin: EdgeInsets.only(
          top: 80,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: primaryColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
          border: Border.all(
            color: primaryTextColor,
            width: 1,
          ),
        ),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/sign-in');
          },
          child: Text(
            'Daftar',
            style: primaryTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semibold,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgcolor1,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              children: [
                header(),
                inputUsername(),
                inputEmail(),
                inputPassword(),
                inputKonfirm(),
                buttonRegister(),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
