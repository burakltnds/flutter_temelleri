import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key,});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _counter = 0;
  void _increment_counter () {
    _counter++;
    setState(() {
    });
  }

  void _reset_counter (){
    _counter = 0;
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF191919),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
              Image.asset("assets/Photos/zikirmatik.png",width: 300,),
              Positioned(
                top: 40,
                right: 80,
                child: _sayac(),
              ) ,
              Positioned(
                bottom: 25,
                child: _arttirma_butonu(),
              ),

              Positioned(
                bottom: 113.5,
                right: 75,
                child: _reset_butonu(),
              )
              ],)
          ],
        ),
      ),
    );




  }

  GestureDetector _reset_butonu() {
    return GestureDetector(
                onTap: _reset_counter  ,
                child: Container(
                  width: 32,
                  height: 32,
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(60)
                  ),
                ),
              );
  }

  Text _sayac() {
    return Text("${_counter}",
                  style: TextStyle(
                    fontFamily: "Digital7",
                    fontSize: 58,
                    color: Colors.white,
                  )
              );
  }

  GestureDetector _arttirma_butonu() {
    return GestureDetector(
                onTap: _increment_counter,
                child: Container(
                  width: 102,
                  height: 102,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(60),
                  ),
                ),
              );
  }
}




