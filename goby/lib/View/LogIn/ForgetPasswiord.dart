import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'DetermineUser.dart';
import 'UserLogIn.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextStyle _styleText = TextStyle(fontSize: 18);
  TextEditingController _codeController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _rePasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  String number = "223";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 58.0),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Container(
                        child: Text(
                      "Please write the code has been sent for user name ",
                      style: _styleText,
                    )),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: TextFormField(
                      controller: _codeController,
                      decoration: InputDecoration(
                        suffixIcon: _codeController.text == number
                            ? Padding(
                                padding: const EdgeInsets.only(right: 18.0),
                                child: Image.asset(
                                  "assets/images/check.png",
                                  width: 20,
                                  height: 20,
                                ),
                              )
                            : Text(""),
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 17),
                        labelText: 'Code',
                        // hintText: "Code",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.black),
                          // borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.black),
                          // borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: TextFormField(
                      validator: (val) {
                        return val!.isEmpty ? "Enter Password " : null;
                      },
                      style: TextStyle(fontSize: 18),
                      controller: _passwordController,
                      decoration: InputDecoration(
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 17),
                        labelText: 'Password',
                        // hintText: "Code",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.black),
                          // borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.black),
                          // borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: TextFormField(
                      validator: (val) {
                        return val!.isEmpty ? "Enter Re-password " : null;
                      },
                      style: TextStyle(fontSize: 18),
                      controller: _rePasswordController,
                      decoration: InputDecoration(
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 17),

                        labelText: 'Re-Password',
                        // hintText: "Code",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.black),
                          // borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.black),
                          // borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child: Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        height: MediaQuery.of(context).size.height * 0.1,
                        decoration: BoxDecoration(
                          color: Colors.white60,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(22),
                          boxShadow: [
                            BoxShadow(
                              // color: Colors.grey.withOpacity(0.5),
                              color: Color(0xF888888),

                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: TextButton(
                          child: Text(
                            "Save",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              if (_passwordController.text ==
                                  _rePasswordController.text) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetermineUser()),
                                );
                              } else if (_passwordController.text !=
                                  _rePasswordController.text) {
                                Fluttertoast.showToast(
                                  msg: 'Password must be identical',
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.SNACKBAR,
                                  backgroundColor: Colors.deepOrange,
                                  textColor: Colors.white,
                                  fontSize: 22.0,
                                );
                              }
                            } else
                              print("Click");
                          },
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
