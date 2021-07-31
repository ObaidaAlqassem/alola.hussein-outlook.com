import 'package:flutter/material.dart';
import 'package:goby/View/HomePage/HomePagePartner.dart';

import 'View/HomePage/HomePageUser.dart';
import 'View/HomePage/ProfilePage.dart';
import 'View/HomePage/item.dart';
import 'View/LogIn/CreateAccountPartner.dart';
import 'View/LogIn/CreateAccountUser.dart';
import 'View/LogIn/DetermineUser.dart';
import 'View/LogIn/ForgetPasswiord.dart';
import 'View/LogIn/UserLogIn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(


        primarySwatch: Colors.blue,
      ),
      home:ForgetPassword(),
    );
  }
}

