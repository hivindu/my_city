import 'package:flutter/material.dart';
import '../../Animation/FadeAnimation.dart';
import '../widgets/issue_type_card.dart';

class IssueSelect extends StatefulWidget {
  final int id;
  IssueSelect({this.id});
  @override
  _IssueSelectState createState() => _IssueSelectState();
}

class _IssueSelectState extends State<IssueSelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff21254A),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 150,
            child: Stack(
              children: <Widget>[
                Positioned(
                    child: FadeAnimation(
                  1,
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/1.png"),
                      ),
                    ),
                  ),
                ))
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FadeAnimation(
                  1,
                  Text(
                    "Select Issue Type",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                FadeAnimation(
                  1,
                  Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.transparent,
                    ),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              IssueTypeCard(Id: 1,image: 'assets/images/potholes.jpg',),
                              SizedBox(width: 10.0,),
                              IssueTypeCard(Id: 2,image: 'assets/images/lights-and-signs.jpg',),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                        children: <Widget>[
                          IssueTypeCard(Id: 3,image: 'assets/images/floding.jpg',),
                          SizedBox(width: 10.0,),
                          IssueTypeCard(Id: 4,image: 'assets/images/roadworks.jpg',),
                          
                        ],
                      ),
                        ],
                      ),
                    ),
                  ),
                ),
                
                // SizedBox(
                //   height: 20.0,
                // ),
                // FadeAnimation(
                //   1,
                //   GestureDetector(
                //     child: Container(
                //       height: 50,
                //       margin: EdgeInsets.symmetric(horizontal: 60),
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(50),
                //         color: Color.fromRGBO(49, 39, 79, 1),
                //       ),
                //       child: Center(
                //         child: Text(
                //           "Next",
                //           style: TextStyle(color: Colors.white),
                //         ),
                //       ),
                //     ),
                //     onTap:(){
                //       setState(() {
                //             print("Next Pressed!");   
                //             //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> MainScreen(model: widget.model)));
                //                   });
                //     } ,
                //   ),
                // ),
                // SizedBox(
                //   height: 20.0,
                // ),
                // FadeAnimation(
                //   1,
                //   Center(
                //     child: Text(
                //       "Create Account",
                //       style: TextStyle(
                //         color: Colors.pink[200],
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}