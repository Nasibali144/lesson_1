import 'package:flutter/material.dart';
import 'package:lesson_1/screens/detail_screen.dart';

class HomeScreen extends StatefulWidget {
  static const id = "/home_screen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String? result;

  void openDetail() async {
    /// push
    // I method a:
    // Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailScreen()));
    // I method b:
    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DetailScreen(name: "Stadium1",)));

    // II method a:
    // Navigator.pushNamed(context, DetailScreen.id);
    // II method b:
    // Navigator.of(context).pushNamed(DetailScreen.id);

    /// pushReplacement
    // I method a:
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const DetailScreen()));
    // I method b:
    // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const DetailScreen()));

    // II method a:
    // Navigator.pushReplacementNamed(context, DetailScreen.id);
    // II method b:
    // Navigator.of(context).pushReplacementNamed(DetailScreen.id);

    String? value = await Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DetailScreen(name: "Stadium1",)));
    setState(() {
      result = value;
    });
    print(result ?? "No Data");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          /// bad:
          // onPressed: () {
          //   openDetail();
          // },
          /// good:
          onPressed: openDetail,
          child: Text("Stadion 1 $result"),
          color: Colors.blueAccent,
          textColor: Colors.white,
        ),
      ),
    );
  }
}
