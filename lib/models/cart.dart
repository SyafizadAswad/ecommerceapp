import 'package:flutter/material.dart';

import 'drink.dart';

class Cart extends ChangeNotifier {
  //list of drinks for sale
  List<Drink> drinkShop = [
    Drink(
        name: 'Root Beer',
        price: '3.90',
        imagePath: 'lib/images/rootbeer.jpg',
        description: 'Forklift certified'),
    Drink(
        name: 'Coke',
        price: '1.90',
        imagePath: 'lib/images/coke.jpg',
        description: 'Eh Bebsi is better'),
    Drink(
        name: '7 Up',
        price: '2.90',
        imagePath: 'lib/images/7up.jpg',
        description: 'Old memes for this one'),
    Drink(
        name: 'Dr Pepper',
        price: '5.90',
        imagePath: 'lib/images/rootbeer.jpg',
        description: 'Sunnovabitch'),
  ];

  //list of items in user cart
  List<Drink> userCart = [];

  //get list of items for sale
  List<Drink> getDrinkList() {
    return drinkShop;
  }

  //get cart
  List<Drink> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Drink drink) {
    userCart.add(drink);
    notifyListeners();
  }

  //remove items from cart
  void removeItemFromCart(Drink drink) {
    userCart.remove(drink);
    notifyListeners();
  }
}
