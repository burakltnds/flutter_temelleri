import 'package:flutter/material.dart';
import 'package:veri_tabani/screens/home_screen.dart';
import 'package:veri_tabani/services/database_service.dart';

void main() async {
  //Flutter Hazırlanır
  WidgetsFlutterBinding.ensureInitialized();
  //veritabanı başlat
  await DatabaseService.initialize();

  //widgetları çiz
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
