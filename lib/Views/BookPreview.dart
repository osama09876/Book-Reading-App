import 'package:book_reading_app/Views/ReadingPdf.dart';
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
import '../UI Helper/CustomColors.dart';

import '../Models/BookData.dart';
// import '../providers/bookMark.dart';

class BookPreview extends StatelessWidget {
  BookPreview({super.key, required this.comingdata});
  final BookModel comingdata;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('Book Preview'),
        backgroundColor: wrcolor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  height: 250,
                  width: double.infinity,
                  child: Image(
                    image: AssetImage('${comingdata.bookImage}'),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  comingdata.bookName.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 33,
                  ),
                ),
              ),
              Text(
                '${comingdata.shortDes}',
                style: TextStyle(
                    // color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReadingBook(comingdata: comingdata),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: darkcolor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 45,
                  child: Center(
                    child: Text(
                      'Continue Reading',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: wrcolor),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
