import 'package:flutter/material.dart';
import 'screens/home_page.dart';

void main() {
  runApp(const Uygulamam());
}

class Uygulamam extends StatelessWidget {
  const Uygulamam({super.key});

  @override
  Widget build (BuildContext context) {
    return MaterialApp(
     theme:ThemeData(fontFamily: "Nunito"),
      home:HomePage()
,);
}

}

