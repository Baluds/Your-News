import 'package:flutter/material.dart';

class Regfields extends StatelessWidget {
  const Regfields({
    @required this.icn,
    @required this.str,
    Key key,
  }) : super(key: key);
  final IconData icn;
  final String str;
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            icn,
            color: Colors.white,
          ),
        ),
        Theme(
          data: ThemeData(
            primaryColor: Colors.white,
          ),
          child: SizedBox(
            height: 40,
            width: _width * 0.5,
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {},
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                hintText: str,
                hintStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
