import 'package:flutter/material.dart';
import 'package:goby/View/LogIn/DetermineUser.dart';

import 'Constant.dart';
import 'ProfilePage.dart';

class HomePageUser extends StatefulWidget {
  const HomePageUser({Key? key}) : super(key: key);

  @override
  _HomePageUserState createState() => _HomePageUserState();
}

class _HomePageUserState extends State<HomePageUser> {
  TextStyle _styleText=TextStyle(fontSize: 18);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFD3D3D3),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 38.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 28.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.12,
                        child: Image.asset("assets/images/logo new.png"),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: MediaQuery.of(context).size.height * 0.08,
                      child: PopupMenuButton<String>(
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.black,
                          size: 40,
                        ),
                        onSelected: choiceAction,
                        itemBuilder: (BuildContext context) {
                          return Constants.choices.map((String choice) {
                            return PopupMenuItem<String>(
                              value: choice,
                              child: Text(choice),
                            );
                          }).toList();
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 38.0),
                child: Divider(
                  color: Colors.black,
                  endIndent: 40.3,
                  indent: 40.3,
                  thickness: 1.2,
                ),
              ),
              ListView.builder(
                  itemBuilder: (_, index) {
                    return Container(
                        child: Column(

                      children: [
                        Row(                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(child:Icon(Icons.account_box_rounded,size: 100,)),
                            Column(
                              children: [
                                Text("Company Name",style: _styleText,),
                                Text("+962 796653203",style: _styleText,),
                                Text("cmopany@gmail.com",style: _styleText,),

                              ],
                            ),
                          ],
                        ),
                      ],
                    ));
                  },
                  itemCount: 4,
                  shrinkWrap: true)
            ],
          ),
        ));
  }

  callMethod(String data) {
    print(data);
  }

  void choiceAction(String choice) {
    if (choice == Constants.Profile) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ProfilePage())
      );
    } else if (choice == Constants.LogOut) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => DetermineUser())
      );
    }
  }
}
