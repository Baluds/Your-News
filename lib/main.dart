import 'package:flutter/material.dart';
import 'package:yournews/ui/pages/Login.dart';

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
      home: Loginpg(),
      // Welcomepg(title: 'Flutter Demo Home Page'),
      //  routes: {
      //   Loginpage.id: (context) => Loginpage(),
      //   RegisterPage.id: (context) => RegisterPage(),
      //   Welcome.id: (context) => Welcomepage(),
      // },
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
