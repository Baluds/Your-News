import 'package:flutter/material.dart';
import 'package:nice_button/nice_button.dart';
import 'package:yournews/constants.dart';
import 'package:yournews/ui/pages/Login.dart';
import 'package:yournews/ui/pages/Register.dart';

class Welcomepg extends StatelessWidget {
  static const String id = 'Welcomepg';
  const Welcomepg({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: Container(
                    width: _width,
                    height: _height * 0.35,
                    child: Image(
                      image: AssetImage('assets/images/welcomepg_main.png'),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: _width,
                    height: _height * 0.4,
                    child: Image(
                      image: AssetImage('assets/images/welcomepg_bottom.png'),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Text(
                    'WELCOME !',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: kprimarydark,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'to ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: kprimary,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'YOUR NEWS',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: kprimarydark),
                        ),
                        TextSpan(
                          text: ' - Influencing News For Influencing People...',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: kprimary),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: NiceButton(
                    width: _width * 0.7,
                    elevation: 8.0,
                    radius: 52.0,
                    text: 'Login',
                    textColor: Colors.white,
                    background: kprimarydark,
                    onPressed: () {
                      Navigator.pushNamed(context, Loginpg.id);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: NiceButton(
                    width: _width * 0.7,
                    elevation: 8.0,
                    radius: 52.0,
                    text: 'Register',
                    textColor: Colors.white,
                    background: kprimarydark,
                    onPressed: () {
                      Navigator.pushNamed(context, Registerpg.id);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
