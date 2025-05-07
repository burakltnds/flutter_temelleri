import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key,});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List elemanlar = ["b", "u", "r", "a", "k"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: elemanlar.map((e) =>
            Container(
              color: Colors.yellow,
              child: Text(e),
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
            )).toList(),

      ),
    );
  }

}