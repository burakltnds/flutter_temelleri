import 'package:baslangic/models/elemanlar_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key,});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List elemanlar = [
    ElemanlarModel("Başlık 1", "AltBaşlık1") ,
    ElemanlarModel("Başlık 2", "AltBaşlık2") ,
    ElemanlarModel("Başlık 3", "AltBaşlık3") ,
    ElemanlarModel("Başlık 4", "AltBaşlık4") ,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder (
          itemCount: elemanlar.length,
          itemBuilder: (context,index) => ListTile(
            title: Text(elemanlar[index].title),
            subtitle: Text(elemanlar[index].subtitle),
            trailing: Icon(Icons.add),
            tileColor: Colors.amber,
            onTap: ()=> print("abc"),
          ),

      ) ,
    );
  }

}