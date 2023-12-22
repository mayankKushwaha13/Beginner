import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/homeView.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "E-Mandi",
      home: HomeView(),
    );
  }
}