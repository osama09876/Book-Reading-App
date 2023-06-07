// import 'package:book_reading_app/Views/ContinueBookPage.dart';
import 'package:book_reading_app/UI%20Helper/CustomColors.dart';
import 'package:book_reading_app/Views/BookPreview.dart';
// import 'package:book_reading_app/Views/ReadingPdf.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Models/BookData.dart';
// import 'package:pdfx/pdfx.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  // late PdfController pdfController;
  // loadController() {
  //   pdfController = PdfController(document: PdfDocument.openAsset(''));
  // }

  int index = 0;
  @override
  Widget build(BuildContext context) {
    List imageList = [
      {'id': 1, 'image_path': 'assets/images/image1.jpg'},
      {'id': 2, 'image_path': 'assets/images/image2.jpg'},
      {'id': 3, 'image_path': 'assets/images/image3.jpg'},
    ];

    final CarouselController carouselController = CarouselController();

    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: darkcolor,
        elevation: 0,
        leading: Icon(
          Icons.sort,
          color: Colors.red,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              size: 28,
              color: Colors.grey.shade400,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          CarouselSlider(
            items: imageList
                .map(
                  (items) => Image.asset(
                    items['image_path'],
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  //
                )
                .toList(),
            carouselController: carouselController,
            options: CarouselOptions(
              scrollPhysics: BouncingScrollPhysics(),
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 0.9,
              aspectRatio: 2.0,
              initialPage: 2,
              onPageChanged: (i, reason) {
                setState(() {
                  index = i;
                });
              },
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 16,
              top: 16,
              right: 16,
            ),
            decoration: BoxDecoration(
              // color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'Discover Books',
              style: GoogleFonts.catamaran(
                fontWeight: FontWeight.w900,
                fontSize: 40,
                height: 1,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: BookContent.bookData.length,
              itemBuilder: (context, i) {
                final data = BookContent.bookData[i];
                return Padding(
                  padding: const EdgeInsets.only(left: 15, bottom: 15),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          print('Book open');

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BookPreview(
                                comingdata: data,
                              ),
                            ),
                          );
                        },
                        child: Container(
                          height: 180,
                          width: 140,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.5),
                          ),
                          child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage(data.bookImage!),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data.bookName.toString(),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            data.bookAuth.toString(),
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                data.bookRating.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
