import 'package:flutter/material.dart';
import 'package:food_app/src/widgets/small_button.dart';

class FoodItemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal:10.0,),
              margin: EdgeInsets.all(10.0),
              height: 150.0,
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      right: 10.0,
                    ),
                    width: 90.0,
                    height: 90.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/d.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Breakfast",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15.0,),
                      Wrap(
                        children:<Widget>[
                          Container(
                            width:200.0,
                            child: Text("This Is the discription of the food item"),
                            ),
                        ],
                      ),
                      SizedBox(height: 15.0,),
                      Container(
                        width: 200.0, 
                      
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("\u{20B5} 90.0",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue
                            ),),
                            SmallButton(btnText: "Buy",)
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            );
  }
}