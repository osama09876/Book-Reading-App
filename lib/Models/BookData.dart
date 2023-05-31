// import 'dart:js_util';

class BookContent {
  static List<BookModel> bookData = [
    BookModel(
      bookId: '001',
      bookName: 'Paradise Lost',
      bookImage: 'assets/images/book1.PNG',
      bookAuth: 'John Milton',
      bookRating: 4.5,
      pdfUrl: 'assets/pdflists/book1.pdf',
      reveiws: '12k reveiws',
      shortDes:
          "The epic poem Paradise Lost (1608–1674) by the 17th-century English poet John Milton (1608–1674) is written in blank verse. The original edition, published in 1667, has ten volumes and almost 10,000 lines of poem. In 1674, a second version was published, divided into twelve volumes (similar to Virgil's Aeneid) and with minor alterations throughout. It is often regarded as Milton's masterpiece, and it contributed to his status as one of the finest English poets of his time. The poem is about the biblical tale of Adam and Eve being tempted by the fallen angel Satan and being expelled from the Garden of Eden.",
    ),
    BookModel(
      bookId: '002',
      bookName: 'The Merchant Of Venice',
      bookImage: 'assets/images/book2.jpg',
      bookAuth: 'JWilliam Shakespeare',
      bookRating: 4.7,
      pdfUrl: 'assets/pdflists/book2.pdf',
      reveiws: '20k reveiws',
      shortDes:
          "It is hard to imagine a world without Shakespeare. Since their composition four hundred years ago, Shakespeare’s plays and poems have traveled the globe, inviting those who see and read his works to make them their own.",
    ),
    BookModel(
      bookId: '002',
      bookName: 'The Scarlet Pimpernel',
      bookImage: 'assets/images/image5.jpg',
      bookAuth: 'Michael H. HartBaroness Orczy',
      bookRating: 4.1,
      pdfUrl: 'assets/pdflists/book5.pdf',
      reveiws: '20k reveiws',
      shortDes:
          "The Scarlet Pimpernel is the first novel in a series of historical fiction by Baroness Orczy, published in 1905. It was written after her stage play of the same title (co-authored with Montague Barstow) enjoyed a long run in London, having opened in Nottingham in 1903.",
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
    this.pdfUrl,
    this.reveiws,
    this.shortDes,
  });

  String? bookId;
  String? bookName;
  String? bookAuth;
  double? bookRating;
  String? bookImage;
  String? pdfUrl;
  String? reveiws;
  String? shortDes;
}
