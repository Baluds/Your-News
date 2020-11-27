import 'package:flutter/material.dart';
import 'package:nice_button/nice_button.dart';
import 'package:yournews/constants.dart';
import 'package:yournews/ui/pages/Login.dart';
import 'package:yournews/widgets/Regfields.dart';
import 'package:yournews/widgets/painter.dart';
import 'package:yournews/widgets/regpass.dart';

class Registerpg extends StatelessWidget {
  const Registerpg({Key key}) : super(key: key);
  static const String id = 'Registerpg';

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: _height,
                width: _width,
                child: CustomPaint(
                  painter: BgPainter(),
                ),
              ),
              Container(
                // height: _height,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: kprimarydark,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Hero(
                          tag: 'pic',
                          child: Container(
                            width: _width * 0.6,
                            height: _height * 0.36,
                            child: Center(
                              child: Image(
                                image:
                                    AssetImage('assets/images/registerpgL.png'),
                              ),
                            ),
                          ),
                        ),
                        Baseline(
                          baseline: 270,
                          baselineType: TextBaseline.ideographic,
                          child: Container(
                            width: _width * 0.3,
                            height: _height * 0.2,
                            child: Center(
                              child: Image(
                                image: AssetImage(
                                    'assets/images/registerpgRchair.png'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: _height * 0.6,
                      width: _width,
                      decoration: BoxDecoration(
                        color: kprimary,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Regfields(
                              icn: Icons.person,
                              str: 'Enter Full Name',
                            ),
                            Regfields(
                              icn: Icons.mail,
                              str: 'Enter Email',
                            ),
                            Regpassfields(),
                            NiceButton(
                              width: _width * 0.7,
                              elevation: 8.0,
                              radius: 52.0,
                              text: 'Register',
                              textColor: Colors.white,
                              background: kprimarydark,
                              onPressed: () {
                                // Navigator.pushNamed(context, Landing.id);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Loginpg(),
                                  ),
                                );
                              },
                            ),
                            InkWell(
                              hoverColor: Colors.black,
                              focusColor: Colors.black,
                              highlightColor: Colors.black,
                              splashColor: Colors.black,
                              child: RichText(
                                text: TextSpan(
                                  text: 'Already have a account?? ',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Log In',
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          fontWeight: FontWeight.bold,
                                          color: ksecondary),
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.pushNamed(context, Loginpg.id);
                              },
                            ),
                            Container(
                              width: _width,
                              height: _height * 0.2,
                              child: Image(
                                image: AssetImage(
                                    'assets/images/cities_bottom.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
