class Product {
  int id;
  String productName;
  int numberOfLikes;
  int numberOfComments;
  bool isTrending;
  bool isLiked;
  bool isAddedToCart;
  bool isRated;
  String imageOfTheProduct;
  double  price;
  String imageAtTheBlurOfTheHotPage;

  Product(
      {required this.imageAtTheBlurOfTheHotPage,
      required this.id,
      required this.productName,
      required this.numberOfLikes,
      required this.numberOfComments,
      required this.isTrending,
      required this.isLiked,
      required this.isAddedToCart,
      required this.isRated,
      required this.imageOfTheProduct,
      required this.price});
}
