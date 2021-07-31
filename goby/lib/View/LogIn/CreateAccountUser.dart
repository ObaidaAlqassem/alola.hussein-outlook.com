import 'package:flutter/material.dart';
import 'package:goby/View/HomePage/HomePageUser.dart';

import 'UserLogIn.dart';

class CreateAccountUser extends StatefulWidget {
  const CreateAccountUser({Key? key}) : super(key: key);

  @override
  _CreateAccountUserState createState() => _CreateAccountUserState();
}

class _CreateAccountUserState extends State<CreateAccountUser> {
  TextEditingController _nameUser = TextEditingController();
  TextEditingController _emailUser = TextEditingController();
  TextEditingController _passwordUser = TextEditingController();
  TextEditingController _reRasswordUser = TextEditingController();
  TextEditingController _phoneUser = TextEditingController();
  TextEditingController _creditCardUser = TextEditingController();
  TextEditingController _creditOwnerNumber = TextEditingController();
  TextEditingController _number = TextEditingController();
  TextEditingController _date = TextEditingController();
  TextEditingController newTextEditingController = TextEditingController();
  FocusNode focusNode = FocusNode();

  @override
  void dispose() {
    newTextEditingController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width * 0.90;
    double _height = MediaQuery.of(context).size.height * 0.067;

    return Scaffold(
      backgroundColor: Color(0xFFD3D3D3),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 38.0),
              child: Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle
                      ),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => LogInUser(true)
                                )    );
                          },
                          icon: Icon(Icons.arrow_back),color: Colors.white,)),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.height * 0.08,
                    child: Image.asset("assets/images/logo new.png"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: SizedBox(
                width: _width,
                height: _height,
                child: Container(
                  child: TextFormField(
                    controller: _nameUser,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.black, fontSize: 22),
                      hintText: "Name",
                    ),
                  ),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.8),
                          spreadRadius: 6,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: new BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.white),
                  padding: new EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SizedBox(
                width: _width,
                height: _height,
                child: Container(
                  child: TextFormField(
                    controller: _emailUser,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.black, fontSize: 22),
                      hintText: "UserName",
                    ),
                  ),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.8),
                          spreadRadius: 6,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: new BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.white),
                  padding: new EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SizedBox(
                width: _width,
                height: _height,
                child: Container(
                  child: TextFormField(
                    controller: _passwordUser,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.black, fontSize: 22),
                      hintText: "Password",
                    ),
                  ),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.8),
                          spreadRadius: 6,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: new BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.white),
                  padding: new EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SizedBox(
                width: _width,
                height: _height,
                child: Container(
                  child: TextFormField(
                    controller: _reRasswordUser,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.black, fontSize: 22),
                      hintText: "Re-Password",
                    ),
                  ),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.8),
                          spreadRadius: 6,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: new BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.white),
                  padding: new EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SizedBox(
                width: _width,
                height: _height,
                child: Container(
                  child: TextFormField(
                    controller: _emailUser,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.black, fontSize: 22),
                      hintText: "E-mail",
                    ),
                  ),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.8),
                          spreadRadius: 6,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: new BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.white),
                  padding: new EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SizedBox(
                width: _width,
                height: _height,
                child: Container(
                  child: TextFormField(
                    controller: _phoneUser,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.black, fontSize: 22),
                      hintText: "Phone",
                    ),
                  ),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.8),
                          spreadRadius: 6,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: new BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.white),
                  padding: new EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SizedBox(
                width: _width,
                height: _height,
                child: Container(
                  child: TextFormField(
                    controller: _creditCardUser,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.black, fontSize: 22),
                      hintText: "Credit Card Number",
                    ),
                  ),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.8),
                          spreadRadius: 6,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: new BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.white),
                  padding: new EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SizedBox(
                width: _width,
                height: _height,
                child: Container(
                  child: TextFormField(
                    controller: _creditOwnerNumber,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.black, fontSize: 22),
                      hintText: "Credit Card Owner Name",
                    ),
                  ),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.8),
                          spreadRadius: 6,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: new BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.white),
                  padding: new EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 200,
                    height: _height,
                    child: Container(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: _number,
                        maxLength: 3,
                        decoration: InputDecoration(
                          hintStyle:
                              TextStyle(color: Colors.black, fontSize: 22),
                          hintText: "CVV",
                        ),
                      ),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              spreadRadius: 6,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius:
                              new BorderRadius.all(Radius.circular(20.0)),
                          color: Colors.white),
                      padding: new EdgeInsets.fromLTRB(22.0, 30.0, 10.0, 0.0),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    height: _height,
                    child: Container(
                      child: TextFormField(
                        controller: _date,
                        decoration: InputDecoration(
                          hintStyle:
                              TextStyle(color: Colors.black, fontSize: 22),
                          hintText: "03/21",
                        ),
                      ),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              spreadRadius: 6,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius:
                              new BorderRadius.all(Radius.circular(20.0)),
                          color: Colors.white),
                      padding: new EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.07,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xF888888),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: TextButton(
                    child: Text(
                      "Face Id",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                      ),
                    ),
                    onPressed: () {
                      print("Button");
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.07,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: Colors.white38,
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xF888888),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: TextButton(
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                          builder: (context) => HomePageUser())
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
