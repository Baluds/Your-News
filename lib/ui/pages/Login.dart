import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nice_button/nice_button.dart';
import 'package:yournews/constants.dart';
import 'package:yournews/ui/pages/home.dart';
import 'package:yournews/widgets/Textfields.dart';
import 'package:yournews/widgets/painter.dart';
import 'package:yournews/widgets/passwordfield.dart';

class Loginpg extends StatelessWidget {
  const Loginpg({Key key}) : super(key: key);
  static const String id = 'Loginpg';

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
                height: _height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: Hero(
                        tag: 'pic',
                        child: Container(
                          width: _width * 0.9,
                          height: _height * 0.4,
                          child: Image(
                            image: AssetImage('assets/images/loginpg.png'),
                          ),
                          //or Image(image:NetworkImage('url'),),
                        ),
                      ),
                    ),
                    Container(
                      height: _height * 0.35,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomTextfield(
                            icon: Icon(Icons.mail),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter Email',
                                hintStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Passwordfield(),
                          NiceButton(
                            width: _width * 0.7,
                            elevation: 8.0,
                            radius: 52.0,
                            text: 'Login',
                            textColor: Colors.white,
                            background: kprimarydark,
                            onPressed: () {
                              Navigator.pushNamed(context, MyHomePage.id);
                            },
                          ),
                          InkWell(
                            hoverColor: kprimary,
                            child: Text(
                              'Forget Password??',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 16,
                              ),
                            ),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: _width,
                      height: _height * 0.2,
                      child: Image(
                        image: AssetImage('assets/images/cities_bottom.png'),
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
