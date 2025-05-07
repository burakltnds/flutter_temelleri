import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

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
                onTap: ()=>print("resetlendi") ,
                child: Container(
                  width: 32,
                  height: 32,
                  decoration:BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(60)
                  ),
                ),
              );
  }

  Text _sayac() {
    return Text("000001",
                  style: TextStyle(
                    fontFamily: "Digital7",
                    fontSize: 58,
                    color: Colors.white,
                  )
              );
  }

  GestureDetector _arttirma_butonu() {
    return GestureDetector(
                onTap: () => print("tıklandı"),
                child: Container(
                  width: 102,
                  height: 102,
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius:BorderRadius.circular(60),
                  ),
                ),
              );
  }
}




