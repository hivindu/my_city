import 'package:flutter/material.dart';

class UpvoteButton extends StatelessWidget {
  final IconData id;

  UpvoteButton({this.id});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: 60.0,
      child: Center(
          child: Icon(id),),
    );
  }
}