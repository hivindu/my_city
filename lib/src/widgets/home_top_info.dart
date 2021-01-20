import 'package:flutter/material.dart';
import 'package:gradient_text/gradient_text.dart';

class HomeTopInfo extends StatelessWidget {
  final textstyle = TextStyle(
    fontSize: 38.0,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 20.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Near By Issues", style: textstyle),
             
            ],
          ),
          // Expanded(
          //   child: Image.asset('assets/images/finalise design.png'),
          // ),
          //Image.asset('assets/images/finalise design.png'),
        ],
      ),
    );
  }
}
