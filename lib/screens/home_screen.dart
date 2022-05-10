import 'package:flutter/material.dart';
import 'package:lesson_1/screens/detail_screen.dart';

class HomeScreen extends StatefulWidget {
  static const id = "/home_screen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailScreen()));
          },
          child: Text("DetailPage"),
          color: Colors.blueAccent,
          textColor: Colors.white,
        ),
      ),
    );
  }
}
