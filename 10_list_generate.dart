import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key,});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List elemanlar = ["b", "u", "r", "a", "b"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: List.generate(elemanlar.length , (index) =>
            Container(
              color: Colors.yellow,
              child: Text(elemanlar[index]),
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
            )).toList(),

      ),
    );
  }

}