import 'package:flutter/material.dart';
import 'package:my_portfolioo/presentation/screens/my_home_screen.dart';

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'About Hasan',
      theme: ThemeData.dark(),
      home: const MyHomePage(),
    );
  }
}