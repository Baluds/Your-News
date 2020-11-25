import 'package:flutter/material.dart';
import 'package:yournews/widgets/Textfields.dart';

class Passwordfield extends StatefulWidget {
  const Passwordfield({
    Key key,
  }) : super(key: key);

  _PasswordfieldState createState() => _PasswordfieldState();
}

class _PasswordfieldState extends State<Passwordfield> {
  bool passwordHidden;
  @override
  void initState() {
    super.initState();

    passwordHidden = true;
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextfield(
      icon: Icon(Icons.lock),
      child: TextFormField(
        obscureText: passwordHidden,
        onChanged: (value) {},
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Enter Password',
          hintStyle: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
      child2: GestureDetector(
        child: Icon(
          passwordHidden ? Icons.visibility_off : Icons.visibility,
          color: Colors.black54,
        ),
        onTap: () {
          setState(() {
            passwordHidden = !passwordHidden;
          });
        },
      ),
    );
  }
}
