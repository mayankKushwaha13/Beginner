import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/cart_model.dart';
import 'package:flutter_application_1/views/intro_view.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=>CartModel(),
    child: const MaterialApp(
      home: IntroView(),
    ),);
  }
}