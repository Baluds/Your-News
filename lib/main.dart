import 'package:flutter/material.dart';
import 'package:yournews/ui/pages/Login.dart';
import 'package:yournews/ui/pages/Register.dart';
import 'package:yournews/ui/pages/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Welcomepg(),
      routes: {
        Loginpg.id: (context) => Loginpg(),
        Registerpg.id: (context) => Registerpg(),
        Welcomepg.id: (context) => Welcomepg(),
      },
    );
  }
}
