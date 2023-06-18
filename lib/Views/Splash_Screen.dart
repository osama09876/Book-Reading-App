import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../UI Helper/CustomColors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(
        context,
        '/login',
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: SizedBox(
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        child: Lottie.asset(
                            'assets/lottie/99349-girl-with-books.json'),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'WordWorth',
                        style: GoogleFonts.aclonica(
                          fontSize: 25,
                          color: darkcolor,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Version 1.0.0',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: darkcolor,
                  ),
                ),

                // Image(
                //   image: AssetImage('assets/images/WordsWorth.png'),
                //   width: 300,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
