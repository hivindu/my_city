import 'package:flutter/material.dart';
// import 'package:food_app/src/widgets/food_item_card.dart';
// import 'package:food_app/src/widgets/Normal_Road.dart';
import '../widgets/Normal_Road.dart';
import '../widgets/food_item_card.dart';
import 'issue_select.dart';



class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff21254A),
      body: Container(
        
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 50.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Report Issue",
              style: TextStyle(
                fontSize: 38.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
  
            SizedBox(
              height: 40.0,
            ),
            GestureDetector(
              child: FoodItemCard(),
              onTap: (){
                //Navigator.pop(context, MaterialPageRoute(builder: (context) => ReportIssue()));
                setState(() {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> IssueSelect(id: 1,)));        
                           });
              },
              ),
            SizedBox(
              height: 20.0,
            ),
            GestureDetector(
              child: NormalRoad(),
              onTap: (){
                setState(() {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> IssueSelect(id: 2,)));        
                           });
              },
              )
          ],
        ),
      ),
    );
  }
}
