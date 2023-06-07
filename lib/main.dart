// import 'package:book_reading_app/Views/BookPreview.dart';
import 'package:book_reading_app/Views/HomeScreen.dart';
import 'package:book_reading_app/Views/Login_Screen.dart';
import 'package:book_reading_app/Views/MainScreen.dart';
import 'package:book_reading_app/Views/OTP_Screen.dart';
import 'package:book_reading_app/Views/Profile.dart';
import 'package:book_reading_app/Views/SignUp_Screen.dart';
import 'package:book_reading_app/Views/Splash_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'UI Helper/CustomColors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: themeColor,
          textTheme: GoogleFonts.catamaranTextTheme(),
        ),
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.system,
        // home: SplashScreen(),
        routes: {
          '/': (context) => SplashScreen(),
          '/login': (context) => LoginScreen(),
          '/signup': (context) => SignUpScreen(),
          '/otp': (context) => OtpScreen(),
          '/Home': (context) => MainHomeScreen(),
          '/mainhome': (context) => MainScreen(),
          '/profile': (context) => Profile(),
        });
  }
}
