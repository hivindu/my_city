import 'dart:convert';

import 'package:My_city/src/models/food_modal.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;

class FoodModal extends Model{
  List<Food> _foods =[];
bool _isLoading = false;
  List<Food>get foods{
    return List.from(_foods);
  }

  Future<void> addFood(Food food) async { 
    // _foods.""add(food);

final Map<String, dynamic> foodData = {
  "title" : food.name,
  "description" : food.discription,
  "category" : food.category,
  "price" : food.price,
  "discount" : food.discount
};

    final http.Response response = await http.post("https://foodie-a4fc5.firebaseio.com/foods.json",body: json.encode(foodData));

    final Map<String, dynamic> responeData = json.decode(response.body);

    Food foodWithID = Food(
        id: responeData["name"],
        name: food.name,
        discription: food.discription,
        category: food.category,
        discount: food.discount,
        price: food.price,
    );
_foods.add(foodWithID);
    // print(response);
  }

Future<bool> fetchFoods() async {
    _isLoading = true;
    notifyListeners();

    try {
      final http.Response response =
          await http.get("https://foodie-a4fc5.firebaseio.com/foods.json");

      // print("Fecthing data: ${response.body}");
      final Map<String, dynamic> fetchedData = json.decode(response.body);
      print(fetchedData);

      final List<Food> foodItems = [];

      fetchedData.forEach((String id, dynamic foodData) {
        Food foodItem = Food(
          id: id,
          name: foodData["title"],
          discription: foodData["description"],
          category: foodData["category"],
          price: double.parse(foodData["price"].toString()),
          discount: double.parse(foodData["discount"].toString()),
        );

        foodItems.add(foodItem);
      });

      _foods = foodItems;
      _isLoading = false;
      notifyListeners();
      return Future.value(true);
    } catch (error) {
      print("The errror: $error");
      _isLoading = false;
      notifyListeners();
      return Future.value(false);
    }
  }


  // void fetchFoods()
  // {
  //   http.get("http://192.168.158.1/food_app/API/foods/getFoods.php").then((http.Response response){
  //     print("Fetching data : ${response.body}");

  //     final List fetchData = json.decode(response.body);
  //     final List<Food> fetchedFoodItems=[];

  //     fetchData.forEach((data){
        
  //       Food food = Food(
  //         id:data["id"],
  //         name:data["title"],
  //         imagePath: data["image_path"],
  //         category: data["category_id"],
  //         price: double.parse(data["price"]),
  //         discount: double.parse(data["discount"]),
  //       );
  //       fetchedFoodItems.add(food);
  //     });
  //     _foods = fetchedFoodItems;
  //     // print(_foods);
  //   });
     
  // }
}

