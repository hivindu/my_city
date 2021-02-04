import 'package:flutter/material.dart';
import 'package:My_city/src/widgets/upvote_button.dart';
import 'small_button.dart';

class IssueItemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    IconData icd = Icons.check_circle_outline;
    return Container(
        width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal:8.0,),
              margin: EdgeInsets.all(8.0),
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
                      right: 8.0,
                    ),
                    width: 90.0,
                    height: 90.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/potholes.jpg"),
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
                        "Potholes",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Wrap(
                        children:<Widget>[
                          Container(
                            width:200.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                // Text("This Is the discription of the food item"),
                                Icon(Icons.location_on),
                                Text("sri siddhartha Rd,colombo",style: TextStyle(),)
                              ],
                            ),
                            ),
                        ],
                      ),
                      SizedBox(height: 15.0,),
                      
                      Container(
                        width: 200.0, 
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                           GestureDetector(
                             onTap: (){
                               setState(){
                                 if(icd == Icons.check_circle_outline)
                                 {
                                  icd=Icons.check_circle;
                                 }
                                 else
                                 {
                                   icd=Icons.check_circle_outline;
                                 }
                               }
                             },
                             child: UpvoteButton(id:icd),
                             ),
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