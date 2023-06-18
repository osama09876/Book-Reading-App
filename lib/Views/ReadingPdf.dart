import 'dart:async';
import 'package:book_reading_app/Models/BookData.dart';
import 'package:lottie/lottie.dart';
import '../UI Helper/CustomColors.dart';
import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

// ignore: must_be_immutable
class ReadingBook extends StatefulWidget {
  ReadingBook({super.key, required this.comingdata});
  final BookModel comingdata;

  @override
  State<ReadingBook> createState() => _ReadingBookState();
}

class _ReadingBookState extends State<ReadingBook> {
  late PdfController pdfController = PdfController(
      document: PdfDocument.openAsset('${widget.comingdata.pdfUrl}'));
  bool isLoading = true;
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        isLoading = false; // Set loading state to false when PDF is loaded
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        // centerTitle: true,
        // title: Text(
        //   'Continue reading',
        //   style: TextStyle(fontWeight: FontWeight.bold, color: themeColor),
        // ),
        backgroundColor: darkcolor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.cancel_outlined),
          color: wrcolor,
          // color: Color.fromARGB(255, 4, 27, 31),
        ),
      ),
      body: isLoading
          ? Center(
              child: Lottie.asset('assets/lottie/loader.json',
                  width: 150, height: 150))
          : PdfView(controller: pdfController),
    );
  }
}
