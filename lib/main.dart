import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  getToken() async{
    String token = await _firebaseMessaging.getToken();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getToken();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Push Notification'),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(20),),
              color: Colors.blue
            ),
            child: Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home_outlined, size: 18,
                            color: Colors.black),
                        Text('Home', style: TextStyle(
                            color: Colors.black,
                            fontSize: 10
                        ),),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.favorite_border, size: 18,
                          color: Colors.black,),
                        Text('Wishlist', style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                        ),),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.shopping_cart_outlined, size: 18,
                            color: Colors.black),
                        Text('Cart', style: TextStyle(
                            color: Colors.black,
                            fontSize: 10
                        ),),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person_outline, size: 18,
                            color: Colors.black),
                        Text('Account', style: TextStyle(
                            color: Colors.black,
                            fontSize: 10
                        ),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

