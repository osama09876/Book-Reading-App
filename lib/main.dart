import 'package:book_reading_app/Views/MainScreen.dart';
// import 'package:book_reading_app/Views/OTP_Screen.dart';
// import 'package:book_reading_app/Views/Splash_Screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'UI Helper/CustomColors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: themeColor,
        textTheme: GoogleFonts.catamaranTextTheme(),
      ),
      home: MainScreen(),
    );
  }
}
