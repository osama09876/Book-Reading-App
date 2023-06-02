import 'package:book_reading_app/Models/BookData.dart';
import '../UI Helper/CustomColors.dart';
import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class ReadingBook extends StatelessWidget {
  ReadingBook({super.key, required this.comingdata});
  final BookModel comingdata;

  late PdfController pdfController =
      PdfController(document: PdfDocument.openAsset('${comingdata.pdfUrl}'));

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
