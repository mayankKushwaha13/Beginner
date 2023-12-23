// ignore_for_file: file_names

// ignore_for_file: file_names

import "package:flutter/material.dart";

// ignore: must_be_immutable
class VegetableItemTile extends StatelessWidget {
  final String vegetableName;
  final String itemPrice;
  final String imagePath;
  void Function()? onPressed;


  VegetableItemTile({
    super.key,
    required this.vegetableName,
    required this.itemPrice,
    required this.imagePath,
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
          Image.asset(imagePath,
          height: 80),
          //name
          Text(vegetableName),
          //price + button
          MaterialButton(
            onPressed: onPressed,
            padding: const EdgeInsets.all(8),
            color: Colors.black,
            child: Text('₹$itemPrice',
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