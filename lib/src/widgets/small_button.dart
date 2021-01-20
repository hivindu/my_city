import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {

final String btnText;
SmallButton({this.btnText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: 60.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFFAB47BC),
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Center(
          child: Text(
        "$btnText",
        style: TextStyle(
          color: Color(0xFFAB47BC),
          fontSize: 16.0,
        ),
        
      )),
    );
  }
}
