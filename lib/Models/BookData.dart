class BookContent {
  static List<BookModel> bookDate = [
    BookModel(
      bookId: '001',
      bookName: 'Now you see me',
      bookImage:
          'https://plus.unsplash.com/premium_photo-1669652639337-c513cc42ead6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Ym9va3N8ZW58MHx8MHx8fDA%3D&w=1000&q=80',
      bookAuth: 'Arso',
      bookRating: 7200.50,
      bookPub: 'Abc',
      pdfUrl: 'assets/pdflists',
      reveiws: '120 reveiws',
    ),
  ];
}

class BookModel {
  BookModel({
    this.bookId,
    this.bookName,
    this.bookImage,
    this.bookRating,
    this.bookAuth,
    this.bookPub,
    this.pdfUrl,
    this.reveiws,
  });

  String? bookId;
  String? bookName;
  String? bookAuth;
  String? bookPub;
  double? bookRating;
  String? bookImage;
  String? pdfUrl;
  String? reveiws;
}
