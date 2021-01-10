import 'package:flutter/material.dart';
import 'package:food_app/src/pages/favorite.dart';
import 'package:food_app/src/pages/homepage.dart';
import 'package:food_app/src/pages/order_page.dart';
import 'package:food_app/src/pages/profile_page.dart';
import 'package:food_app/src/socpe%20model/food_model.dart';
import 'package:food_app/src/socpe%20model/main_model.dart';

class MainScreen extends StatefulWidget {
  
  final MainModel model;

  MainScreen({this.model});
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentTabIndex = 0;

  List<Widget> pages;
  Widget currentpage;

  HomePage homePage;
  OrderPage orderPage;
  FavoritePage favoritePage;
  ProfilePage profilePage;
  
  @override
  void initState() {
    //call the fetch method
    // widget.foodModel.fetchFoods();
    widget.model.fetchFoods();
    super.initState();
    homePage = HomePage();
    orderPage = OrderPage();
    favoritePage = FavoritePage();
    profilePage = ProfilePage();
    
    pages =[homePage, favoritePage,orderPage, profilePage];

    currentpage= homePage;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap:(int index){
          setState(() {
            currentTabIndex = index;
            currentpage = pages[index];
          });
        },
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text("Explore"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text("Orders"),
          ),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
          ),
        ],
        ),
        body: currentpage,
    );
  }
}