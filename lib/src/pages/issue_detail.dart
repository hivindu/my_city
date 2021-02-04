import 'package:My_city/src/pages/image_pick.dart';
import 'package:flutter/material.dart';
import '../../Animation/FadeAnimation.dart';

class IssueDetails extends StatefulWidget {
  final int category_Id;
  IssueDetails({this.category_Id});
  @override
  _IssueDetailsState createState() => _IssueDetailsState();
}

class _IssueDetailsState extends State<IssueDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff21254A),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 200,
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
                    "Issue Details",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        setState(() {
                            Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Camera()));                
                          });
                        
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal:30,),
                        padding: EdgeInsets.symmetric(horizontal:25,vertical:20),
                        decoration: BoxDecoration(
                            color: Colors.white60,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5.0,
                                offset: Offset(0, 0.3),
                                color: Colors.black38,
                              )
                            ]),
                        child: Column(
                          children: [
                            Icon(Icons.camera),
                            Text("Add Image"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    GestureDetector(
                      onTap: (){
                        setState((){
                          // Navigator.of(context).push(MaterialPageRoute(builder:(context)=>));
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(20),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.white60,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5.0,
                                offset: Offset(0, 0.3),
                                color: Colors.black38,
                              )
                            ]),
                        child: Column(
                          children: [
                            Icon(Icons.location_on),
                            Text("Set Location"),
                         ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                FadeAnimation(
                  1,
                  GestureDetector(
                    child: Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 60),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromRGBO(49, 39, 79, 1),
                      ),
                      child: Center(
                        child: Text(
                          "SUBMIT",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        print("Login Pressed !");
                        //0Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> MainScreen(model: widget.model)));
                      });
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
