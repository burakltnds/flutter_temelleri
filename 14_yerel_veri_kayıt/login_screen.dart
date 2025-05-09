import 'package:flutter/material.dart';
import 'package:giris_yapma/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final kullaniciAdiController = TextEditingController();
  final sifreController = TextEditingController();

  void _saveUser() async {
  final prefs =await SharedPreferences.getInstance();
  prefs.setString("Kullanıcı Adı", kullaniciAdiController.text);
  prefs.setString("Şifre", sifreController.text);
  }

  void press (BuildContext context){
    _saveUser();
    Navigator.push(context,
        MaterialPageRoute(
            builder: (context) => HomeScreen()
        ));
  }

  void checkUser() async {
    final prefs =await SharedPreferences.getInstance();
    final String ? kullanici =  prefs.getString("Kullanıcı Adı");
    final String ? sifre =  prefs.getString("Şifre");
    if(kullanici != null && sifre != null){
      Navigator.push(context,
          MaterialPageRoute(
              builder: (context) => HomeScreen()
          ));
    }
  }

  @override
  void initState() {
    checkUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: kullaniciAdiController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),

                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: sifreController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),

                ),
              ),
              ElevatedButton(
                  onPressed: () => press(context),
                  child: Text("Giriş Yap")
              )
            ],
          ),
        ),
      ),
    );
  }
}
