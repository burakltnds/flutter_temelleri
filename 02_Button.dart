import 'package:flutter/material.dart';

void main() {
  runApp(const Uygulamam());
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
              ElevatedButton(
                  onPressed: () => print("Press Off"),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
                  child:const Text("Press",style: TextStyle(color: Colors.red),)
              ),
              TextButton(
                  onPressed: (){},
                  child: const Text("Click",style:TextStyle(backgroundColor: Colors.teal)) ,
              ),
              IconButton(onPressed: (){}, icon: const Icon
                (Icons.arrow_back_sharp, color: Colors.red, size: 90,
              )
              ) ,
            ],
          ),
        ),
      )
      ,);
  }

}

