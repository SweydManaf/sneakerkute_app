import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of shoes
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom FREAK',
        price: '236',
        description: 'The forward-thining design of his latest signature shoe.',
        imagePath: 'lib/images/shoes_1.png'),
    Shoe(
        name: 'Air Jordan',
        price: '229',
        description: 'The forward-thining design of his latest signature shoe.',
        imagePath: 'lib/images/shoes_2.png'),
    Shoe(
        name: 'KD Treys',
        price: '236',
        description: 'The forward-thining design of his latest signature shoe.',
        imagePath: 'lib/images/shoes_3.png'),
    Shoe(
        name: 'Kyrie 6',
        price: '190',
        description: 'The forward-thining design of his latest signature shoe.',
        imagePath: 'lib/images/shoes_4.png'),
  ];

  // list os items
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
