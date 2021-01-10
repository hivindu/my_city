import 'package:flutter/material.dart';
import 'package:food_app/src/data/food_data.dart';
import 'package:food_app/src/socpe%20model/food_model.dart';
import 'package:food_app/src/socpe%20model/main_model.dart';
import 'package:food_app/src/widgets/brought_food.dart';
import 'package:food_app/src/widgets/food_category.dart';
import 'package:food_app/src/widgets/home_top_info.dart';
import 'package:food_app/src/widgets/search_field.dart';
import 'package:food_app/src/models/food_modal.dart';
import 'package:scoped_model/scoped_model.dart';

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
      body: ListView(
        padding: EdgeInsets.only(top:50.0,left: 20.0, right: 20.0 ),
        children: <Widget>[
          HomeTopInfo(),
          FoodCategory(),
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
          ScopedModelDescendant<MainModel>(
            builder: (
              BuildContext context, Widget child, MainModel model
            ){
              return Column(
                children: model.foods.map(_buildFoodItems).toList(),
              );
            },
            )
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