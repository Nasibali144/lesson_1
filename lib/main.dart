import 'package:flutter/material.dart';
import 'package:lesson_1/screens/detail_screen.dart';
import 'package:lesson_1/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        DetailScreen.id: (context) => const DetailScreen(),
        // /home_screen: HomeScreen()
      },
    );
  }
}