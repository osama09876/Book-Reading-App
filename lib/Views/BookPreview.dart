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
        backgroundColor: darkcolor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_outlined),
          color: wrcolor,
        ),
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
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      comingdata.bookRating.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ReadingBook(comingdata: comingdata),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
