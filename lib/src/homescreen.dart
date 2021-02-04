import 'package:My_city/src/widgets/brought_food.dart';
import 'package:flutter/material.dart';
import 'package:My_city/src/data/food_data.dart';

import 'package:My_city/src/widgets/home_top_info.dart';
import 'package:My_city/src/widgets/search_field.dart';
import 'package:My_city/src/models/food_modal.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

List<Food> _foods = foods;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top:50.0,left: 20.0, right: 20.0 ),
        children: <Widget>[
          HomeTopInfo(),
          SizedBox(height: 20.0,),
          SearchField(),
           SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Frequently Brought Foods",
                style: TextStyle(
                  fontSize:18.0,
                  fontWeight: FontWeight.bold,
                ),
                ),
              GestureDetector(
                onTap: (){},
                child: Text(
                  "View All",
                  style: TextStyle(
                    fontSize:18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent,
                  ),
                  ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Column(
            children: _foods.map(_buildFoodItems).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildFoodItems(Food food){
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: BroughtFood(
        id: food.id,
        name: food.name,
        imagePath: food.imagePath,
        category: food.category,
        discount: food.discount,
        price: food.price,
        ratings: food.ratings,
      ),
    );
  }
}