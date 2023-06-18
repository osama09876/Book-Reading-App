import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../UI Helper/CustomColors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();
  bool isVisible = true;
  bool isVisiblec = true;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/register.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  Text(
                    'Register',
                    style: GoogleFonts.aclonica(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: wrcolor,
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter name';
                      }

                      return null;
                    },
                    controller: namecontroller,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: darkcolor),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: darkcolor,
                          )),
                      prefixIconColor: darkcolor,
                      prefixIcon: Icon(Icons.person),
                      hintText: 'Enter name',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: darkcolor),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          width: 3,
                          color: darkcolor,
                        ),
                      ),
                    ),
                    style: TextStyle(
                      color: darkcolor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter valid email';
                      }
                      if (!RegExp(
                              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                          .hasMatch(value)) {
                        return 'Enter valid email';
                      }
                      return null;
                    },
                    controller: emailcontroller,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: darkcolor),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: darkcolor,
                          )),
                      prefixIconColor: darkcolor,
                      prefixIcon: Icon(Icons.email_outlined),
                      hintText: 'Enter email address',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: darkcolor),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          width: 3,
                          color: darkcolor,
                        ),
                      ),
                    ),
                    style: TextStyle(
                      color: darkcolor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter valid phone number';
                      }
                      if (!RegExp(
                              r'^((\+92)|(0092))-{0,1}\d{3}-{0,1}\d{7}$|^\d{11}$|^\d{4}-\d{7}$')
                          .hasMatch(value)) {
                        return 'Enter valid mobile number';
                      }
                      return null;
                    },
                    controller: phonecontroller,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: darkcolor),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: darkcolor,
                          )),
                      prefixIconColor: darkcolor,
                      prefixIcon: Icon(Icons.phone),
                      hintText: 'Enter mobile number',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: darkcolor),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          width: 3,
                          color: darkcolor,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.phone,
                    style: TextStyle(
                      color: darkcolor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter password';
                      }
                      if (!RegExp(
                              r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$")
                          .hasMatch(value)) {
                        return 'Enter strong password';
                      }
                      return null;
                    },
                    controller: passwordcontroller,
                    obscureText: isVisible,
                    style: TextStyle(
                      color: darkcolor,
                    ),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: darkcolor),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: darkcolor),
                          borderRadius: BorderRadius.circular(15)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: darkcolor,
                          )),
                      prefixIconColor: darkcolor,
                      suffixIconColor: darkcolor,
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        child: Icon(isVisible
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined),
                      ),
                      hintText: 'Enter password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          width: 3,
                          color: darkcolor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter password';
                      }
                      if (value != passwordcontroller.text) {
                        return 'Password not match';
                      }
                      return null;
                    },
                    controller: confirmpasswordcontroller,
                    obscureText: isVisiblec,
                    style: TextStyle(
                      color: darkcolor,
                    ),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: darkcolor),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: darkcolor),
                          borderRadius: BorderRadius.circular(15)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: darkcolor,
                          )),
                      prefixIconColor: darkcolor,
                      suffixIconColor: darkcolor,
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isVisiblec = !isVisiblec;
                          });
                        },
                        child: Icon(isVisiblec
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined),
                      ),
                      hintText: 'Confirm password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          width: 3,
                          color: darkcolor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              showMyDialog();
                            }
                          },
                          child: Text(
                            'Sign Un',
                            style: GoogleFonts.abhayaLibre(
                              fontWeight: FontWeight.bold,
                              fontSize: 23,
                              color: darkcolor,
                            ),
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                              if (formKey.currentState!.validate()) {
                                showMyDialog();
                              }
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: darkcolor,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_right_alt_outlined,
                                  color: wrcolor,
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Success',
            style: TextStyle(
              color: Colors.green,
            ),
          ),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Registeration succussfull.'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(
                'OK',
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
          ],
        );
      },
    );
  }
}
