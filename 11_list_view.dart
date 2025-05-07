import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key,});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List elemanlar = ["b", "u", "r", "a", "b" ,"b", "u", "r", "a", "b",
      "b", "u", "r", "a", "b"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder (
          itemCount: elemanlar.length,
          itemBuilder: (context,index) => ListTile(
            title: Text(elemanlar[index]),
            subtitle: Text("Eleman $index"),
            trailing: Icon(Icons.add),
            tileColor: Colors.amber,
            onTap: ()=> print("abc"),
          ),

      ) ,
    );
  }

}