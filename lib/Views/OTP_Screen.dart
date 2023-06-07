import 'package:book_reading_app/UI%20Helper/CustomColors.dart';
import 'package:book_reading_app/UI%20Helper/Custom_otp.dart';
// import 'package:book_reading_app/Views/MainScreen.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import '../UI Helper/CustomColors.dart' as color;

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController FirstOPt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: const Icon(Icons.arrow_back),
        title: const Text(
          'Verification Screen',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                height: 300,
                width: 300,
                image: AssetImage('assets/images/auth.png'),
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  Text(
                    'OPT VERIFICATION',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Enter the OTP sent to',
                        style: TextStyle(
                          color: Colors.black,
                          // fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        ' +92 315-1234567',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomOpt(customcontroller: FirstOPt),
                      SizedBox(
                        width: 5,
                      ),
                      CustomOpt(customcontroller: FirstOPt),
                      SizedBox(
                        width: 5,
                      ),
                      CustomOpt(customcontroller: FirstOPt),
                      SizedBox(
                        width: 5,
                      ),
                      CustomOpt(customcontroller: FirstOPt),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '30 Sec',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't receive code? ",
                        style: TextStyle(
                          color: Colors.black,
                          // fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "Re-Send ",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (FirstOPt.text.toString() == "2") {
                        Navigator.pushReplacementNamed(
                          context,
                          '/mainhome',
                        );
                      } else {
                        print('Error');
                      }
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(color: darkcolor),
                      child: Center(
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            fontSize: 23,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
