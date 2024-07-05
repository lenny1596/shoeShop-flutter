import 'package:ecommerce_flutter/models/product_model.dart';
import 'package:flutter/widgets.dart';

class CartModel extends ChangeNotifier {
  // list of items for sale
  List<ProductModel> shopItems = [
    ProductModel(
        name: 'Zoom Freak',
        price: '236',
        imagePath: "lib/images/shoe-4.png",
        description: "Forward-thinking design"),
    ProductModel(
        name: 'Air Jordans',
        price: '220',
        imagePath: "lib/images/shoe-1.png",
        description: "Enhanced design made for running"),
    ProductModel(
        name: 'KD Treys',
        price: '240',
        imagePath: "lib/images/shoe-3.png",
        description: "Your daily hip-hop shoes"),
    ProductModel(
        name: 'Kyrie 6',
        price: '236',
        imagePath: "lib/images/shoe-2.png",
        description: "Made for the Gen-Z's"),
    ProductModel(
        name: 'Tracer Black',
        price: '269',
        imagePath: "lib/images/shoe-6.png",
        description: "Always bet on black"),
    ProductModel(
        name: 'Sneak Kings',
        price: '232',
        imagePath: "lib/images/shoe-5.png",
        description: "Shoes that take you back to the 90's"),
  ];

// list of items in the cart
  List<ProductModel> cartItems = [];

// get method for list of items on sale
  List<ProductModel> getShopList() {
    return shopItems;
  }

// get method for list of items in the cart
  List<ProductModel> getCartItems() {
    return cartItems;
  }

// add items to cart
  void addCartItems(ProductModel item) {
    cartItems.add(item);
    notifyListeners();
  }

// remove items from cart
  void removeCartItems(ProductModel item) {
    cartItems.remove(item);
    notifyListeners();
  }
}
