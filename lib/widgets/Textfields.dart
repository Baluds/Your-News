import 'package:flutter/material.dart';
import 'package:yournews/constants.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield(
      {@required this.icon, @required this.child, this.child2});
  final Icon icon;
  final Widget child;
  final Widget child2;

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Container(
      height: 50,
      width: _width * 0.7,
      decoration: BoxDecoration(
        color: kprimary,
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: icon,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              top: 16.0,
            ),
            child: Theme(
              data: ThemeData(
                textSelectionTheme: TextSelectionThemeData(
                  cursorColor: Colors.black,
                ),
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                height: 30,
                child: child,
              ),
            ),
          ),
          child2 ?? SizedBox(),
        ],
      ),
    );
  }
}
