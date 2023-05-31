// import 'package:book_reading_app/Models/BookData.dart';
import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';
import '../UI Helper/CustomColors.dart';

class ReadingBook extends StatefulWidget {
  ReadingBook({super.key});

  @override
  State<ReadingBook> createState() => _ReadingBookState();
}

class _ReadingBookState extends State<ReadingBook> {
  late PdfController pdfController;
  loadController() {
    pdfController = PdfController(
        document: PdfDocument.openAsset('assets/pdflists/book1.pdf'));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Continue reading',
          style: TextStyle(fontWeight: FontWeight.bold, color: themeColor),
        ),
        backgroundColor: wrcolor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.cancel_sharp),
          color: themeColor,
        ),
      ),
      body: PdfView(controller: pdfController),
    );
  }
}
