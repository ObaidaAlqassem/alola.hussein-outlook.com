import 'package:flutter/material.dart';

import 'CreateAccountPartner.dart';
import 'CreateAccountUser.dart';
import 'ForgetPasswiord.dart';

class LogInUser extends StatefulWidget {
  // const LogInUser({Key? key}) : super(key: key);
  final bool _result;
  const LogInUser(this._result);
  @override
  _LogInUserState createState() => _LogInUserState();
}

class _LogInUserState extends State<LogInUser> {
  TextEditingController _name = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD3D3D3),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.35,
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      // borderRadius:BorderRadius.circular(22.3),
                      boxShadow: [
                        BoxShadow(
                          // color: Colors.grey.withOpacity(0.5),
                          color: Colors.black12,

                          spreadRadius: 7,
                          blurRadius: 6,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Image.asset("assets/images/Log4.png"),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 350,
              child: Container(
                child: TextField(
                  controller: _name,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.black12, fontSize: 22),
                    hintText: "UserName",
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: new BorderRadius.all(Radius.circular(20.0)),
                    color: Colors.white60),
                padding: new EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: SizedBox(
                width: 350,
                child: Container(
                  child: TextField(
                    controller: _password,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.black12, fontSize: 22),
                      hintText: "Password",
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.white60),
                  padding: new EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                ),
              ),
            ),
            Center(
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgetPassword()),
                      );
                    },
                    child: Text(
                      "Forget Password",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        decoration: TextDecoration.underline,
                        // decorationColor: Colors.red,

                      ),
                    ))),
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.height * 0.07,
                  decoration: BoxDecoration(
                    color: Colors.white38,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: [
                      BoxShadow(
                        // color: Colors.grey.withOpacity(0.5),
                        color: Color(0xF888888),

                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: TextButton(
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    onPressed: () {
                      print("LogIn");
                    },
                  ),
                ),
              ),
            ),
            Center(
                child: TextButton(
                    onPressed: () {
                      if(widget._result==true)
                        {  Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CreateAccountUser()),
                        );}
                      else if(widget._result==false){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CreateAccountPartner()),
                        );

                      }
                    },
                    child: Text(
                      "New account",
                      style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 22,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.indigo,

                      ),
                    ))),
            SizedBox(
              width: MediaQuery.of(context).size.width ,
              height: MediaQuery.of(context).size.height * 0.17,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    // borderRadius:BorderRadius.circular(22.3),
                    boxShadow: [

                    ],
                  ),
                  child: Image.asset("assets/images/logo new.png"),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
