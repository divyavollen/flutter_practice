import 'package:flutter/material.dart';
import 'package:workspace/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoes = [
    Shoe(
      name: 'Shoe 1',
      price: '245',
      description: 'Cool shoe 1',
      imagePath: 'lib/images/nike1.jpg',
    ),

    Shoe(
      name: 'Shoe 2',
      price: '212',
      description: 'Cool shoe 2',
      imagePath: 'lib/images/nike2.jpg',
    ),

    Shoe(
      name: 'Shoe 3',
      price: '308',
      description: 'Cool shoe 3',
      imagePath: 'lib/images/nike3.jpg',
    ),

    Shoe(
      name: 'Shoe 4',
      price: '236',
      description: 'Cool shoe 4',
      imagePath: 'lib/images/nike4.jpg',
    ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoes;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
