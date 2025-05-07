import 'package:baslangic/screens/second_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            MyCompenent(),
            
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondScreen(),
              ));
            },
                child: Text("ikinci sayfaya geç"))
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 80,
      child: Card(
        color: Colors.grey,
        elevation: 5,
        shadowColor: Colors.black,
        child:Align(
          child:Text("Meraba"),

        ),
      ),
    );
  }
}

class MyPadding extends StatelessWidget {
  const MyPadding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 200),
      child: Image.asset("assets/Photos/stok1.jpg" ,
        height: 70,
      ),
    );
  }
}

class MyCompenent extends StatelessWidget {
  const MyCompenent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(20),
      width: 100,
      height: 100,
      alignment: Alignment.center ,
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius:BorderRadius.circular(15) ,
        boxShadow: [BoxShadow(
            color: Colors.grey ,
            blurRadius: 6,
            spreadRadius: 8,
            offset: Offset(0, 3)
        )] ,
        border : Border.all(width: 1.5 , color: Colors.black),
        gradient:  LinearGradient(
            colors: [Colors.black , Colors.white] ,
            begin: Alignment.topCenter,
            end: Alignment.bottomRight
        ) ,
      ),
      child:const Text("Ruwis",
        style: TextStyle(
            color: Colors.white ,
            fontSize: 24),) ,
    );
  }
}

