import 'package:flutter/material.dart';
import 'package:eight_project/models/products.dart';

class ProductProviders with ChangeNotifier {
  List<Product> products = [
    Product(
        id: 1,
        isRated: true,
        isTrending: true,
        isAddedToCart: true,
        isLiked: true,
        productName: "phone",
        numberOfLikes: 10,
        numberOfComments: 190,
        price: "\$99",
        imageOfTheProduct: "assets/images/image-phone.jpg"),
    Product(
        id: 2,
        isRated: true,
        isTrending: true,
        isAddedToCart: true,
        isLiked: true,
        productName: "controller",
        numberOfLikes: 230,
        numberOfComments: 44350,
        price: "\$678",
        imageOfTheProduct: "assets/images/image-controller.jpg"),
    Product(
        id: 3,
        isRated: true,
        isTrending: true,
        isAddedToCart: true,
        isLiked: true,
        productName: "tv",
        numberOfLikes: 340,
        numberOfComments: 550,
        price: "\$7543",
        imageOfTheProduct: "assets/images/image-tv.jpg"),
    Product(
        id: 4,
        isRated: true,
        isTrending: true,
        isAddedToCart: true,
        isLiked: true,
        productName: "laptop",
        numberOfLikes: 430,
        numberOfComments: 430,
        price: "\$666",
        imageOfTheProduct: "assets/images/image-laptop.jpg"),
    Product(
        id: 5,
        isRated: true,
        isTrending: true,
        isAddedToCart: true,
        isLiked: true,
        productName: "hdd",
        numberOfLikes: 3250,
        numberOfComments: 3450,
        price: "\$74654",
        imageOfTheProduct: "assets/images/image-hdd.webp"),
  ];
  List<Product> cart = [];

  void rate() {}

  void like(index) {
    products[index].isLiked = !products[index].isLiked;

    notifyListeners();
  }

  void addToCart(index) {
    if (cart.contains(products[index])) {
      products[index].isAddedToCart = !products[index].isAddedToCart;
      int cartIndex = cart
          .indexWhere((Product product) => product.id == products[index].id);
      cart.removeAt(cartIndex);
    } else {
      products[index].isAddedToCart = !products[index].isAddedToCart;

      cart.add(products[index]);
    }

    notifyListeners();
  }

  void trendiing() {}
}
