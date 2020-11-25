import 'package:flutter/material.dart';
import 'package:yournews/ui/pages/Login.dart';
import 'package:yournews/ui/pages/Register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Registerpg(),
      // Welcomepg(title: 'Flutter Demo Home Page'),
      routes: {
        Loginpg.id: (context) => Loginpg(),
        Registerpg.id: (context) => Registerpg(),
        //   Welcome.id: (context) => Welcomepage(),
      },
    );
  }
}

class Welcomepg extends StatefulWidget {
  Welcomepg({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WelcomepgState createState() => _WelcomepgState();
}

class _WelcomepgState extends State<Welcomepg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(),
    );
  }
}
