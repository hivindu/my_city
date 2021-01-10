import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String btnText;
  Button({this.btnText});
  @override
  Widget build(BuildContext context) {
    return Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.blueAccent,
                ),
                child: Center(
                  child: Text(
                    "$btnText",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
  }
}