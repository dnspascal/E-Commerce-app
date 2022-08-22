import 'package:flutter/material.dart';
import 'package:eight_project/models/products.dart';

class ProductProviders with ChangeNotifier {
  int likeCounterIncrease = 0;

  List<Product> products = [
    Product(
        imageAtTheBlurOfTheHotPage: "assets/images/blur2 (3).jpg",
        id: 1,
        isRated: true,
        isTrending: true,
        isAddedToCart: true,
        isLiked: true,
        productName: "phone",
        numberOfLikes: 0,
        numberOfComments: 0,
        price: 100.45,
        imageOfTheProduct: "assets/images/image-phone.jpg"),
    Product(
        imageAtTheBlurOfTheHotPage: "assets/images/blur2 (5).jpg",
        id: 2,
        isRated: true,
        isTrending: true,
        isAddedToCart: true,
        isLiked: true,
        productName: "controller",
        numberOfLikes: 0,
        numberOfComments: 0,
        price: 50.7,
        imageOfTheProduct: "assets/images/image-controller.jpg"),
    Product(
        imageAtTheBlurOfTheHotPage: "assets/images/blur2 (4).jpg",
        id: 3,
        isRated: true,
        isTrending: true,
        isAddedToCart: true,
        isLiked: true,
        productName: "tv",
        numberOfLikes: 0,
        numberOfComments: 0,
        price: 475.99,
        imageOfTheProduct: "assets/images/image-tv.jpg"),
    Product(
        imageAtTheBlurOfTheHotPage: "assets/images/blur2 (2).jpg",
        id: 4,
        isRated: true,
        isTrending: true,
        isAddedToCart: true,
        isLiked: true,
        productName: "laptop",
        numberOfLikes: 0,
        numberOfComments: 0,
        price: 553.45,
        imageOfTheProduct: "assets/images/image-laptop.jpg"),
    Product(
        imageAtTheBlurOfTheHotPage: "assets/images/blur2 (1).jpg",
        id: 5,
        isRated: true,
        isTrending: true,
        isAddedToCart: true,
        isLiked: true,
        productName: "hdd",
        numberOfLikes: 0,
        numberOfComments: 0,
        price: 49.56,
        imageOfTheProduct: "assets/images/image-hdd.webp"),
  ];
  bool isAddedToCartButtonAtProductDetails = true;
  bool isLikedInDetail = true;
  int numberOfLikesInDetailPage = 0;

  List<Product> cart = [];

  void rate(index) {
    products[index].isRated = !products[index].isRated;
  }

  void like(index) {
    products[index].isLiked = !products[index].isLiked;
    products[index].isLiked
        ? products[index].numberOfLikes--
        : products[index].numberOfLikes++;
    //products[index].isLiked ? likeCounterIncrease++ : likeCounterIncrease--;

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

  void trending(index) {
    products[index].isTrending = !products[index].isTrending;
    notifyListeners();
  }

  subtotal() {
    double total = 0.0;

    for (var element in cart) {
      total += element.price;
    }
    return total;
  }

  taxes() {
    double tax = 18 / 100;
    List taxes = [];
    double totalTax = 0.0;
    for (var element in cart) {
      taxes.add(tax * element.price);
    }
    for (var items in taxes) {
      totalTax += items;
    }
    return totalTax;
  }

  void addToCartOnProductDetails() {
    isAddedToCartButtonAtProductDetails = !isAddedToCartButtonAtProductDetails;

    //  if(cart.isEmpty){
    //     isAddedToCartButtonAtProductDetails =
    //         !isAddedToCartButtonAtProductDetails;

    //     for (int i = 0; i < products.length; i++) {
    //       cart.add(products[i]);
    //     }

    //   }  else if (cart.contains(products[0])) {
    //     isAddedToCartButtonAtProductDetails =
    //         !isAddedToCartButtonAtProductDetails;
    //     for (var x in cart) {
    //       cart.remove(x);
    //     }
    //   }

    // if (cart.isEmpty) {
    //   isAddedToCartButtonAtProductDetails =
    //       !isAddedToCartButtonAtProductDetails;

    //   for (var x in products) {
    //     cart.add(x);
    //   }
    // } else {
    //   isAddedToCartButtonAtProductDetails =
    //       !isAddedToCartButtonAtProductDetails;

    //   for (var x in cart) {
    //     cart.remove(x);
    //   }
    // }

    notifyListeners();
  }

  void likedInDetail() {
    isLikedInDetail ? numberOfLikesInDetailPage++ : numberOfLikesInDetailPage--;
    isLikedInDetail = !isLikedInDetail;

    // for (int i = 0; i < products.length; i++) {
    //   cart.add(products[i]);
    // }
    notifyListeners();
  }
}
