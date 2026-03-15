class BookModel {
  final String title;
  final String price;
  final String image;

  BookModel({required this.title, required this.price, required this.image});
}

class VendorModel {
  final String logo;

  VendorModel({required this.logo});
}

class AuthorModel {
  final String name;
  final String job;
  final String image;

  AuthorModel({required this.name, required this.job, required this.image});
}
