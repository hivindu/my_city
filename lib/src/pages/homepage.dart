import 'package:flutter/material.dart';
import 'package:My_city/src/socpe%20model/main_model.dart';

import 'package:My_city/src/widgets/issue_card.dart';
import 'package:My_city/src/widgets/home_top_info.dart';
// import 'package:My_city/src/models/food_modal.dart';
import 'package:scoped_model/scoped_model.dart';

import '../../Animation/FadeAnimation.dart';

class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

// List<Food> _foods = foods;

@override
  void initState() {
    // widget.foodModal.fetchFoods();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff21254A),
      body: Container(
        decoration: BoxDecoration(
         color: Color(0xff21254A),
        ),
        child: ListView(
          padding: EdgeInsets.only(top:50.0,left: 20.0, right: 20.0 ),
          children: <Widget>[
            FadeAnimation(1,
            HomeTopInfo(),
            ),
            
            SizedBox(
              height: 20.0,
            ),
            ScopedModelDescendant<MainModel>(
              builder: (
                BuildContext context, Widget child, MainModel model
              ){
                return
                FadeAnimation(2, 
                Column(
                  //children: model.foods.map(_buildFoodItems).toList(),
                  children: <Widget>[
                    IssueItemCard(),
                    IssueItemCard(),
                    IssueItemCard(),
                    IssueItemCard(),
                  ],
                )
                );
              },
              )
          ],
        ),
      ),
    );
  }

// Widget _buildFoodItems(Food food){
//     return Container(
//       margin: EdgeInsets.only(bottom: 20.0),
//       child: BroughtFood(
//         id: food.id,
//         name: food.name,
//         imagePath: food.imagePath,
//         category: food.category,
//         discount: food.discount,
//         price: food.price,
//         ratings: food.ratings,
//       ),
//     );
//   }

}