import 'package:flutter/material.dart';
import 'package:food_app/src/widgets/custom_listtile.dart';
import 'package:food_app/src/widgets/small_button.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool tunOnNotification = false;
  bool turnLocationFunction = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 50.0,
            horizontal: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Profile",
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 120.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60.0),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3.0,
                          offset: Offset(0, 4.0),
                          color: Colors.black38,
                        )
                      ],
                      image: DecorationImage(
                        image: AssetImage("assets/images/breakfast-coffee.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Desan Pathirana",
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "1234567890",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                     SmallButton(btnText: "Edit",),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Account",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.0,),
              Card(
                elevation: 3.0,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                     CustomListTile(
                       icon: Icons.location_on,
                       text: "Location",
                     ),
                      Divider(
                        height: 10.0,
                        color: Colors.grey,
                      ),
                      CustomListTile(
                       icon: Icons.visibility,
                       text: "Change Password",
                     ),
                      Divider(
                        height: 10.0,
                        color: Colors.grey,
                      ),
                      CustomListTile(
                       icon: Icons.shopping_cart,
                       text: "Shipping",
                     ),
                      Divider(
                        height: 10.0,
                        color: Colors.grey,
                      ),
                      CustomListTile(
                       icon: Icons.payment,
                       text: "Payment",
                     ),
                      Divider(
                        height: 10.0,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
               SizedBox(
                height: 30.0,
              ),
              Text(
                "Notifications",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.0,),
              Card(
                elevation: 3.0,
                child: Padding(
                  
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("App Notification"),
                          Switch(
                            value:tunOnNotification,
                            onChanged: (bool value)
                            {
                              setState(() {
                                tunOnNotification= value;
                              });
                              
                            },
                          ),
                        ],
                      ),
                      Divider(
                        height: 10.0,
                        color: Colors.grey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Location Tracking"),
                          Switch(
                            value:turnLocationFunction,
                            onChanged: (bool val)
                            {
                              setState(() {
                                turnLocationFunction= val;
                              });
                              
                            },
                          ),
                        ],
                      ),
                       Divider(
                        height: 10.0,
                        color: Colors.grey,
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Other",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.0,),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:<Widget>[
                        Text("Language",style: TextStyle(fontSize:16.0,),textAlign: TextAlign.start,),
                        // SizedBox(height:10.0,),
                        Divider(
                        height: 30.0,
                        color: Colors.grey,
                      ),
                      Text("Currency",style: TextStyle(fontSize:16.0,),textAlign: TextAlign.start,),
                      // SizedBox(height:10.0,),
                      Divider(
                        height: 30.0,
                        color: Colors.grey,
                      ),
                      ],
                    ),
                  ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}