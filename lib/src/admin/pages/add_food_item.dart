import 'package:flutter/material.dart';
import 'package:My_city/src/models/food_modal.dart';
import 'package:My_city/src/socpe%20model/main_model.dart';
import 'package:My_city/src/widgets/button.dart';
import 'package:scoped_model/scoped_model.dart';

class AddFoodItem extends StatefulWidget {
  @override
  _AddFoodItemState createState() => _AddFoodItemState();
}

class _AddFoodItemState extends State<AddFoodItem> {
  final MainModel mainModel = MainModel();
  String title;
  String category;
  String description;
  String price;
  String discount;

  GlobalKey<FormState> _foodTextFormKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 60.0,
            horizontal: 16.0,
          ),
          // width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,
          child: Form(
            key: _foodTextFormKey,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                    bottom: 10.0,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/img_not_available.png"),
                    ),
                  ),
                ),
                _buildTextFormField("Food Title"),
                _buildTextFormField("Category"),
                _buildTextFormField("Description", maxLine: 5),
                _buildTextFormField("Price"),
                _buildTextFormField("Discount"),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.18,
                ),
                ScopedModelDescendant(builder:
                    (BuildContext context, Widget child, MainModel model) {
                  return GestureDetector(
                    onTap: () {
                      if (!_foodTextFormKey.currentState.validate()) {
                        

                        final Food food = Food(
                          name: title,
                          price: double.parse(price),
                          discription: description,
                          discount: double.parse(discount),
                          category: category,
                        );

                        model.addFood(food);
                      }else{
                        _foodTextFormKey.currentState.save();
                      }
                    },
                    child: Button(btnText: "Add Food Item"),
                  );
                })
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextFormField(String hint, {int maxLine = 1}) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "$hint",
      ),
      maxLines: maxLine,
      keyboardType: hint == "Price" || hint == "Discount"
          ? TextInputType.number
          : TextInputType.text,
      validator: (String value) {
        var errormsg = "";

        if (value.isEmpty && hint == "Food Title") {
          errormsg = "The Food Title is Reqired";
        }
        if (value.isEmpty && hint == "Category") {
          errormsg = "The Category is Reqired";
        }
        if (value.isEmpty && hint == "Description") {
          errormsg = "The Description is Reqired";
        }
        if (value.isEmpty && hint == "Price") {
          errormsg = "The Price is Reqired";
        }

        return errormsg;
      },
      onChanged: (String value) {
        if (hint == "Food Title") {
          title = value;
        }
        if (hint == "Category") {
          category = value;
        }
        if (hint == "Description") {
          description = value;
        }
        if (hint == "Price") {
          price = value;
        }
        if (hint == "Discount") {
          discount = value;
        }
      },
    );
  }
}
