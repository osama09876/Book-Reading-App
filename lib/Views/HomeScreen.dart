import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_controller.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  @override
  Widget build(BuildContext context) {
    List imageList = [
      {'id': 1, 'image_path': 'assets/images/image1.jpg'},
      {'id': 2, 'image_path': 'assets/images/image2.jpg'},
      {'id': 3, 'image_path': 'assets/images/image3.jpg'},
    ];

    final CarouselController carouselController = CarouselController();
    int index = 0;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
              color: Colors.white,
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
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 180,
                        width: 140,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Title here...'),
                          SizedBox(
                            height: 8,
                          ),
                          Text('Author here...'),
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
                              Text('4.2'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
