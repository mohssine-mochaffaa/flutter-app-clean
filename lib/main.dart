import 'package:flutter/material.dart';
import 'package:flutter_smart_application/Screens/login.page.dart';
import 'package:flutter_smart_application/Screens/register.page.dart';
import 'Screens/home.page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/login",
      routes: {
        '/login':(context)=> LoginPage(),
        '/register':(context) => RegisterPage(),
        '/home':(context) => HomePage()
      },
    );
  }
}