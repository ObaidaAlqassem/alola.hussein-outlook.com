import 'package:flutter/material.dart';

import 'Constant.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextStyle _styleText = TextStyle(fontSize: 18);
  TextStyle _styleBold =
      TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black);

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.account_box,
                    size: 100,
                  ),
                  Text(
                    "Trade Name",
                    style: _styleText,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '\'aaaa@gmail.com',
                      style: _styleText,
                    ),
                    GestureDetector(
                      onTap: () {
                        print("Edit");
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              spreadRadius: 6,
                              blurRadius: 20,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Image(
                          image: AssetImage(
                            'assets/images/pen (1).png',
                          ),
                          fit: BoxFit.cover,
                        ),
                        height: 40,
                        width: 40,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Divider(
                  color: Colors.black,
                  endIndent: 40.3,
                  indent: 40.3,
                  thickness: 1.2,
                ),
              ),
              Container(
                  child: Text(
                "Bank Account Information",
                style: _styleBold,
              )),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "IBAN",
                      style: _styleText,
                    ),
                    GestureDetector(
                      onTap: () {
                        print("Edit");
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              spreadRadius: 6,
                              blurRadius: 20,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Image(
                          image: AssetImage(
                            'assets/images/pen (1).png',
                          ),
                          fit: BoxFit.cover,
                        ),
                        height: 35,
                        width: 35,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Divider(
                  color: Colors.black,
                  endIndent: 40.3,
                  indent: 40.3,
                  thickness: 1.2,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Text(
                      "Phone",
                      style: _styleBold,
                    ),
                  ),
                  Container(
                    child: Text(
                      "+962796653203",
                      style: _styleText,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Divider(
                  color: Colors.black,
                  endIndent: 40.3,
                  indent: 40.3,
                  thickness: 1.2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Create Password",
                      style: _styleBold,
                    ),
                    GestureDetector(
                      onTap: () {
                        print("Edit");
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              spreadRadius: 6,
                              blurRadius: 20,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Image(
                          image: AssetImage(
                            'assets/images/pen (1).png',
                          ),
                          fit: BoxFit.cover,
                        ),
                        height: 35,
                        width: 35,
                      ),
                    ),
                  ],
                ),
              ),  Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Re-Write password",
                      style: _styleBold,
                    ),
                    GestureDetector(
                      onTap: () {
                        print("Edit");
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              spreadRadius: 6,
                              blurRadius: 20,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Image(
                          image: AssetImage(
                            'assets/images/pen (1).png',
                          ),
                          fit: BoxFit.cover,
                        ),
                        height: 35,
                        width: 35,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  callMethod(String data) {
    print(data);
  }

  void choiceAction(String choice) {
    if (choice == Constants.Profile) {
      print('Profile');
    } else if (choice == Constants.LogOut) {
      print('Logout');
    }
  }
}
