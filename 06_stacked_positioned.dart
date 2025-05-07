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
            Stack(children: [
              Image.asset("assets/Photos/zikirmatik.png",width: 300,),
              Positioned(
                top: 40,
                right: 80,
                child: Text("000001",
                    style: TextStyle(
                      fontFamily: "Digital7",
                      fontSize: 58,
                      color: Colors.white,
                    )
                ),
              )
            ],)
          ],
        ),
      ),
    );




  }
}




