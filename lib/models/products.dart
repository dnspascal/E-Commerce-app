class Product {
  int id;
  late String productName;
  int numberOfLikes;
  int numberOfComments;
  bool? isTrending;
  bool isLiked;
  bool isAddedToCart;
  bool? isRated;
  String imageOfTheProduct;
  String price;
  

  Product(
    
      {
        required this.id,
        required this.productName,
      required this.numberOfLikes,
      required this.numberOfComments,
      this.isTrending,
      required this.isLiked,
      required this.isAddedToCart,
      this.isRated,
      required this.imageOfTheProduct,
      required this.price});
}
