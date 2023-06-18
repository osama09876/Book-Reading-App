import 'package:book_reading_app/UI%20Helper/CustomColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomOpt extends StatelessWidget {
  CustomOpt({super.key, required this.customcontroller});

  final TextEditingController customcontroller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 70,
      child: TextFormField(
        controller: customcontroller,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 25, color: darkcolor),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [LengthLimitingTextInputFormatter(1)],
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none),
          hintText: '*',
          hintStyle: TextStyle(color: darkcolor),
          fillColor: Colors.grey.shade300,
          filled: true,
        ),
      ),
    );
  }
}
