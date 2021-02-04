import 'package:flutter/material.dart';

class FoodItemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal:5.0,),
              height:MediaQuery.of(context).size.height*0.3,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5.0,
                      offset: Offset(0, 0.3),
                      color: Colors.black38,
                    )
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width:MediaQuery.of(context).size.width-43,
                    height: MediaQuery.of(context).size.height*0.35,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/highway.jpg"),
                        fit: BoxFit.fitWidth,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                      child: Text(
                        "Normal Road Issue",
                        style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                          backgroundColor: Colors.white,
                        ),
                        ),
                    ),
                  ),
                ],
              ),
            );
  }
}