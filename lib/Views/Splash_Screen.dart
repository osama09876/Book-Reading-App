import 'dart:async';
import 'dart:math' as math;
import 'package:book_reading_app/Views/Login_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'dart:math' as math;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController controller =
      AnimationController(duration: Duration(seconds: 3), vsync: this)
        ..repeat();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ));
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
                AnimatedBuilder(
                  animation: controller,
                  child: Container(
                    height: 330,
                    width: 330,
                    child: Center(
                      child: Image(
                          image: AssetImage('assets/images/WordsWorth.png')),
                    ),
                  ),
                  builder: (context, Widget? child) {
                    return Transform.rotate(
                      angle: controller.value * 2 * math.pi,
                      child: child,
                    );
                  },
                ),
                // Image(
                //   image: AssetImage('assets/images/WordsWorth.png'),
                //   width: 300,
                // ),
                SpinKitFadingCube(
                  color: Colors.orange,
                  size: 50.0,
                  // controller: controller,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
