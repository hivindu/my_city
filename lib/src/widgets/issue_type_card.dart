import 'package:flutter/material.dart';
import 'package:My_city/src/pages/issue_detail.dart';

class IssueTypeCard extends StatefulWidget {
  final int Id;
  final String image;

  IssueTypeCard({this.Id,this.image});
  @override
  _IssueTypeCardState createState() => _IssueTypeCardState();
}

class _IssueTypeCardState extends State<IssueTypeCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
          children: <Widget>[
              Image.asset(widget.image,height: MediaQuery.of(context).size.height*0.2,width: MediaQuery.of(context).size.width*0.4,),
           ],
      ),
      onTap: (){
        setState(() {
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>IssueDetails(category_Id: widget.Id)));       
        });
      },
    );
  }
}