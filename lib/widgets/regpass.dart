import 'package:flutter/material.dart';

class Regpassfields extends StatefulWidget {
  const Regpassfields({
    Key key,
  }) : super(key: key);
  _RegpassfieldsState createState() => _RegpassfieldsState();
}

class _RegpassfieldsState extends State<Regpassfields> {
  bool passwordHidden;
  @override
  void initState() {
    super.initState();

    passwordHidden = true;
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.lock,
            color: Colors.white,
          ),
        ),
        Theme(
          data: ThemeData(
            primaryColor: Colors.white,
            textSelectionTheme: TextSelectionThemeData(
              cursorColor: Colors.white,
            ),
          ),
          child: SizedBox(
            height: 40,
            width: _width * 0.45,
            child: TextFormField(
              obscureText: passwordHidden,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {},
              style: TextStyle(
                color: Colors.white,
              ),
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
                hintText: 'Enter Password',
                hintStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          child: Icon(
            passwordHidden ? Icons.visibility_off : Icons.visibility,
            color: Colors.white,
          ),
          onTap: () {
            setState(() {
              print(passwordHidden);
              passwordHidden = !passwordHidden;
            });
          },
        ),
      ],
    );
  }
}
