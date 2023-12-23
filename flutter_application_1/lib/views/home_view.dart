import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/cart_model.dart';
import 'package:flutter_application_1/components/vegetable_Item_Tile.dart';
import 'package:flutter_application_1/views/second_view.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 200, 178, 239),
      
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 200, 178, 239),
        
      ),
      body: Column(
        children: [
          const Center(
            child: Text("Fresh Veggies!",
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
                  itemCount: value.Vegetables.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1/1.2), 
              itemBuilder: ((context, index) {
                return VegetableItemTile(
                  vegetableName: value.Vegetables[index][0],
                  itemPrice: value.Vegetables[index][1],
                  imagePath: value.Vegetables[index][2],
                  onPressed: (){
                    Provider.of<CartModel>(context,listen: false).addToCartV(index);
                  },
                );
              }));
              }
            ),
              ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  InkWell(
                      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>const SecondPage())),
                      child: Ink(
                        decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(12)),
                        padding: const EdgeInsets.only(top: 25, bottom: 25, left: 50, right: 50),
                        child: const Text('Next Page', style: TextStyle(color: Colors.white, fontSize: 20,),)
                      ),
                    ),
                  
                ],),
            )
        ],)
    );
  }
}