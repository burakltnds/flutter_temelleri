import 'package:flutter/material.dart';

class SecondScreen  extends StatelessWidget {
  const SecondScreen ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text("ikinci ekran"),
          ),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
            } ,
              child: const Text("Ekranı Kapat"))
        ],
      ),
    );
  }
}
