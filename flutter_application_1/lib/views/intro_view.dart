import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/home_view.dart';
class IntroView extends StatelessWidget {
  const IntroView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
            backgroundColor: Colors.grey[300],
            body: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  children: [ 
                    const Padding(
                      padding: EdgeInsets.all(32)
                    ),
                    const SizedBox(height: 100),
                    // logo
                    const CircleAvatar(
                      radius: 100,
                      backgroundColor: Color.fromARGB(255, 200, 178, 239),
                      foregroundImage: AssetImage('lib/images/logo.png'),
                    ),
                    const SizedBox(height: 40,),
                    //title
                    const Text("Welcome to E-Mandi!",
                    style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 20,),),
                    Text("Veggies shopping  made easy.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[600],
                    ),),
                    const SizedBox(height: 45,),
                    //button
                    InkWell(
                      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage())),
                      child: Ink(
                        decoration: BoxDecoration(color: Colors.grey[900], borderRadius: BorderRadius.circular(12)),
                        padding: const EdgeInsets.only(top: 25, bottom: 25, left: 100, right: 100),
                        child: const Text('Shop Now', style: TextStyle(color: Colors.white),)
                      ),
                    ),
                  ],
                ),
              ),
            )
        ),
    );
  }
}