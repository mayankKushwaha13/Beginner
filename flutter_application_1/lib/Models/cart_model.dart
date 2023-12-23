// ignore_for_file: non_constant_identifier_names

import "package:flutter/material.dart";

class CartModel extends ChangeNotifier{
  //list of items on sale
  final List _vegetables=[
    ["Potatoes","20.30","lib/images/potato.png"],
    ["Beans","80.56","lib/images/beans.png"],
    ["Cauliflowers","35.50","lib/images/cauliflower.png"],
    ["Eggplants","40.26","lib/images/eggplant.png"],
  ];
  final List _fruits =[
    ["Apples","220.20","lib/images/apple.png"],
    ["Bananas","65.56","lib/images/banana.png"],
    ["Pineapples","90.78","lib/images/pineapple.png"],
    ["Oranges","70.12","lib/images/orange.png"],
  ];

  final List _cartItems =[];
  get Vegetables => _vegetables;
  get Fruits => _fruits;
  get cartItems => _cartItems;

  // add to cart
  void addToCartV(int index){
    _cartItems.add(_vegetables[index]);
    notifyListeners();
  }
  void addToCartF(int index){
    _cartItems.add(_fruits[index]);
    notifyListeners();
  }
  // remove from cart
  void removeFromCart(int index){
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //calculate total
  String calculateTotal(){
    double total=0;
    for(int i=0;i<_cartItems.length;i++){
      total+=double.parse(_cartItems[i][1]);
    }
    return total.toStringAsFixed(2);
  }
  
}