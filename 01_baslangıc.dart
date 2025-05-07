import 'package:flutter/material.dart';

void main() {
  runApp(Uygulamam());
}

class Uygulamam extends StatelessWidget {
  const Uygulamam({super.key});

  @override
  Widget build (BuildContext context) {
    return MaterialApp(
     theme:ThemeData(fontFamily: "Nunito"),
      home:Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("İLK UYGULAMAM",style: TextStyle(fontWeight: FontWeight.w400 ,color:Colors.red.shade900),),
          backgroundColor: Colors.yellow.shade600,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment : MainAxisAlignment.center,
            children: [
              Image.asset('assets/Photos/stok1.jpg' ,
              width: 200, ),
              SizedBox(height: 10,) ,
              Text("Sea Sand Sun "),
            ],
          ),
        ),
      )
      ,);
  }

}

