// ignore_for_file: file_names

import "package:flutter/material.dart";

// ignore: must_be_immutable
class FruitItemTile extends StatelessWidget {
  final String fruitName;
  final String fruitPrice;
  final String fruitPath;
  void Function()? onPressed;


   FruitItemTile({
    super.key,
    required this.fruitName,
    required this.fruitPrice,
    required this.fruitPath,
    required this.onPressed,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          //image
          Image.asset(fruitPath,
          height: 80),
          //name
          Text(fruitName),
          //price + button
          MaterialButton(
            onPressed: onPressed,
            padding: const EdgeInsets.all(8),
            color: Colors.black,
            child: Text('₹$fruitPrice/kg',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )),
            
          )
        ],)
      ),
    );
  }
}