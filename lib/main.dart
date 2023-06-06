import 'package:flutter/material.dart';
import 'package:jejak_alam/pages/home/main_page.dart';
import 'package:jejak_alam/pages/materi_kesehatan_page.dart';
import 'package:jejak_alam/pages/materi_panduan_page.dart';
import 'package:jejak_alam/pages/materi_persiapan_page.dart';
import 'package:jejak_alam/pages/materi_tenda_page.dart';
import 'package:jejak_alam/pages/perkiraan_cuaca_page.dart';
import 'package:jejak_alam/pages/rekomendasi_toko_page.dart';
import 'package:jejak_alam/pages/sign_in_page.dart';
import 'package:jejak_alam/pages/sign_upPage.dart';
import 'package:jejak_alam/pages/splash_page.dart';
import 'package:jejak_alam/pages/toko_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-Up': (context) => const  SignUpPage(),
        '/home': (context) => const  MainPage(),
        '/materi-panduan': (context) => const MateriPage(),
        '/materi-tenda': (context) => const TendaPage(),
        '/materi-persiapan': (context) => const MateriPersiapan(),
        '/materi-kesehatan': (context) =>const  MateriKesehatan(),
        '/cuaca-page': (context) =>const  CuacaPage(),
        '/rekomendasi-toko': (context) =>const  RekomendasiToko(),
        '/toko-page': (context) =>const  TokoPage(),
      },
    );
  }
}
