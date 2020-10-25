import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;

  const RoundedButton({this.text, this.press});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 220.0,
        height: 60.0,
        alignment: FractionalOffset.center,
        decoration: new BoxDecoration(
          border: Border.all(color: Colors.black),
          //color: const Color.fromRGBO(247, 64, 106, 1.0),
          borderRadius: new BorderRadius.all(const Radius.circular(30.0)),
        ),
        child: FlatButton(
          onPressed: press,
          child: new Text(
            this.text,
            style: new TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.w300,
              letterSpacing: 0.3,
            ),
          ),
        ));
  }
}
