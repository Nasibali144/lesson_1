import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  static const id = "/detail_screen";
  const DetailScreen({Key? key}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Screen"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Detail Screen"),
      ),
    );
  }
}
