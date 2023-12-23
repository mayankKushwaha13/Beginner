import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/cart_model.dart';
import 'package:flutter_application_1/components/fruit_Item_Tile.dart';
import 'package:flutter_application_1/views/cart_view.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(
            builder: (context){
            return const CartPage();
          }));
        },
        backgroundColor: Colors.black,
        child: const Icon(Icons.shopping_cart_outlined, color: Colors.purpleAccent,),
        ),
      backgroundColor: const Color.fromARGB(255, 200, 178, 239),
      
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 200, 178, 239),
        
      ),
      body: Column(
        children: [
          const Center(
            child: Text("Fresh Fruits!",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),),
          ),
          const Padding(padding: 
          EdgeInsets.symmetric(horizontal: 12,),
          child: Divider(color: Colors.black),),

          Expanded(
            child: Consumer<CartModel>(
              builder: (context, value, child){
                return GridView.builder(
                  itemCount: value.Fruits.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1/1.4), 
              itemBuilder: ((context, index) {
                return FruitItemTile(
                  fruitName: value.Fruits[index][0],
                  fruitPrice: value.Fruits[index][1],
                  fruitPath: value.Fruits[index][2],
                  onPressed: (){
                    Provider.of<CartModel>(context,listen: false).addToCartF(index);
                  },
                );
              }));
              }
            ),
              ),
            
        ],)
    );
  }
}

