import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? kullaniciAdi ;

  String? sifre;

  void _getUserInfo () async {
    final prefs =await SharedPreferences.getInstance();
    final String? kullanici = prefs.getString("Kullanıcı Adı");
    final String? sifre1 = prefs.getString("Şifre");


    setState(() {
      kullaniciAdi = kullanici;
      sifre = sifre1;
    });
  }

  @override
  void initState() {
    _getUserInfo ();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("$kullaniciAdi $sifre"),
      ),
    );
  }
}
