import 'package:flutter/material.dart';
import 'package:food_app/src/data/category_data.dart';
import 'package:food_app/src/widgets/food_card.dart';
import 'package:food_app/src/models/category_modal.dart';

class FoodCategory extends StatelessWidget {

final List<Category> _categories = categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context, int index){
          return FoodCard(
            categoryName: _categories[index].categoryName,
            imagePath: _categories[index].imagePath,
            numberOfItems: _categories[index].numberOfItems,
          );
        },
      ),
    );
  }
}