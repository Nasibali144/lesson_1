import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  static const id = "/detail_screen";
  final String? name;

  const DetailScreen({Key? key, this.name}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  // field

  // logic method
  void goBack() {
    Navigator.of(context).pop("Home Page ga Detail Screen button ni orqali o'tildi!!!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name!),
        centerTitle: true,
      ),
      body: Center(
        child: MaterialButton(
          onPressed: goBack,
          child: Text("Detail Screen"),
          textColor: Colors.white,
          color: Colors.blueAccent,
        ),
      ),
    );
  }

  // widget method
}
