// ignore_for_file: prefer_interpolation_to_compose_strings

import "package:flutter/material.dart";
import "package:flutter_application_1/Models/cart_model.dart";
import "package:flutter_application_1/views/intro_view.dart";
import "package:provider/provider.dart";
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Consumer<CartModel>(
        builder: (context, value, child){
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(padding: EdgeInsets.all(10),
          child: Center(
            child: Text(
              "My Cart",
              style:TextStyle(
                fontSize: 36,
                fontFamily: "Times New Roman",
                fontWeight: FontWeight.bold,
              )
            ),
          ),),
          Expanded(child: ListView.builder(
            itemCount: value.cartItems.length,
            itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 198, 183, 225),
                  borderRadius: BorderRadius.circular(12),

                ),
                child: ListTile(
                  leading: Image.asset(value.cartItems[index][2],
                  height: 35,),
                  title: Text(value.cartItems[index][0]),
                  subtitle: Text("₹"+value.cartItems[index][1]),
                  trailing: IconButton(
                    onPressed: (){
                      Provider.of<CartModel>(context,listen: false).removeFromCart(index);
                    }, 
                    icon: const Icon(Icons.cancel),
                    ),),
              ),
            );
          })),
          // total + Pay now
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              decoration: BoxDecoration(color: Colors.green,
              borderRadius: BorderRadius.circular(8)),
              padding: const EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Total Price",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      )),
                      Text("₹${value.calculateTotal()}",
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),),
                    ],
                  ),

                  //submit button
                  MaterialButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => const IntroView())));
                  },
                  color: Colors.grey.shade900,
                  child: const Text("Submit", 
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),),
                  )

              ],)
            ),
          )
        ],
      );
        }
        )
    );
  }
}