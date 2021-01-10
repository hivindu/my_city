import 'package:flutter/material.dart';
import 'package:food_app/src/admin/pages/add_food_item.dart';
import 'package:food_app/src/screens/main_screen.dart';
import 'package:food_app/src/socpe%20model/food_model.dart';
import 'package:food_app/src/socpe%20model/main_model.dart';
import 'package:scoped_model/scoped_model.dart';

class App extends StatelessWidget {

final MainModel mainModel = MainModel();

  @override
  Widget build(BuildContext context) {
    return ScopedModel<MainModel>(
      model: mainModel,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
      title: "My CIty",
      theme: ThemeData(
        primaryColor:Colors.blueAccent,
      ),
      home: MainScreen(model: mainModel),
      // home: AddFoodItem(),
      ),
     );
  }
}