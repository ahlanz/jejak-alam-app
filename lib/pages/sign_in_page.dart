import 'package:flutter/material.dart';
import 'package:jejak_alam/theme.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Center(
        child: Image.asset(
          'assets/images/jejak_logo.png',
          width: 150,
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          children: [
            Text(
              'Email',
              style: primaryTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semibold,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter your email',
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

    Widget passwordInput() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          children: [
            Text(
              'Password',
              style: primaryTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semibold,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter your Password',
                hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff000000),
                  ),
                ),
                suffixIcon: Container(
                  alignment: Alignment.centerRight,
                  width: 24,
                  height: 24,
                  child: Icon(Icons.visibility),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Lupa password ?',
                  style: primaryTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: semibold,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'reset password',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 10,
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

    Widget validatorLogin() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          children: [
            Text(
              'Login Dengan :',
              style: primaryTextStyle.copyWith(
                fontSize: 12,
                fontWeight: semibold,
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/icons/icon_google.png',
                  width: 43,
                ),
                SizedBox(
                  width: 14,
                ),
                Image.asset(
                  'assets/icons/icon_facebook.png',
                  width: 43,
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget buttonLogin() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
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
            Navigator.pushNamed(context, '/home');
          },
          child: Text(
            'Login',
            style: primaryTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semibold,
            ),
          ),
        ),
      );
    }

    Widget buttonRegister() {
      return Container(
        margin: EdgeInsets.only(
          top: 10,
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
            Navigator.pushNamed(context, '/sign-Up');
          },
          child: Text(
            'Register',
            style: primaryTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semibold,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(
            top: 50,
            right: 80,
            left: 80,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                header(),
                emailInput(),
                passwordInput(),
                validatorLogin(),
                buttonLogin(),
                buttonRegister(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
