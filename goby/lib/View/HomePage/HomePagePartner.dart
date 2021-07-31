import 'package:flutter/material.dart';
import 'package:goby/View/LogIn/DetermineUser.dart';

import 'Constant.dart';
import 'ProfilePage.dart';

class HomePagePartner extends StatefulWidget {
  @override
  _HomePagePartnerState createState() => _HomePagePartnerState();
}

class _HomePagePartnerState extends State<HomePagePartner> {
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
  bool _selected = false;
  bool _select = false;

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
                shrinkWrap: true,
                itemCount: itemData.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      ExpansionPanelList(
                        animationDuration: Duration(milliseconds: 1000),
                        dividerColor: Colors.red,
                        elevation: 1,
                        children: [
                          ExpansionPanel(
                            body: Container(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Center(
                                    child: ClipOval(
                                      child: Image.asset(
                                        itemData[index].img,
                                        fit: BoxFit.contain,
                                        height: 150,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          " -  face recognition",
                                          style: TextStyle(
                                              color: Colors.grey[700],
                                              fontSize: 20,
                                              letterSpacing: 0.3,
                                              height: 1.3),
                                        ),
                                      ),
                                      Text(
                                        " - Buyer information: (after  facial recognition)",
                                        style: TextStyle(
                                            color: Colors.grey[700],
                                            fontSize: 20,
                                            letterSpacing: 0.3,
                                            height: 1.3),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          " - Buyer's name.",
                                          style: TextStyle(
                                              color: Colors.grey[700],
                                              fontSize: 20,
                                              letterSpacing: 0.3,
                                              height: 1.3),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            headerBuilder:
                                (BuildContext context, bool isExpanded) {
                              return Container(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  itemData[index].headerItem,
                                  style: TextStyle(
                                    color: itemData[index].colorsItem,
                                    fontSize: 18,
                                  ),
                                ),
                              );
                            },
                            isExpanded: _selected,
                            // isExpanded: itemData[index].expanded,
                          ),
                        ],
                        expansionCallback: (int item, bool status) {
                          setState(() {
                            _selected = !_selected;
                            // itemData[index].expanded =
                            //     !itemData[index].expanded;
                            print("Hi");
                          });
                        },
                      ),
                      ExpansionPanelList(
                        animationDuration: Duration(milliseconds: 1000),
                        dividerColor: Colors.red,
                        elevation: 1,
                        children: [
                          ExpansionPanel(
                            body: Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Previous Operation",
                                          style: TextStyle(
                                              color: Colors.grey[700],
                                              fontSize: 20,
                                              letterSpacing: 0.3,
                                              height: 1.3),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          " - Amount paid",
                                          style: TextStyle(
                                              color: Colors.grey[700],
                                              fontSize: 20,
                                              letterSpacing: 0.3,
                                              height: 1.3),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          " -time and date ",
                                          style: TextStyle(
                                              color: Colors.grey[700],
                                              fontSize: 20,
                                              letterSpacing: 0.3,
                                              height: 1.3),
                                        ),
                                      ),  Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          " -Buyer's name",
                                          style: TextStyle(
                                              color: Colors.grey[700],
                                              fontSize: 20,
                                              letterSpacing: 0.3,
                                              height: 1.3),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            headerBuilder:
                                (BuildContext context, bool isExpanded) {
                              return Container(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  "History",
                                  style: TextStyle(
                                    color: itemData[index].colorsItem,
                                    fontSize: 18,
                                  ),
                                ),
                              );
                            },
                            isExpanded: _select,
                            // isExpanded: itemData[index].expanded,
                          ),
                        ],
                        expansionCallback: (int item, bool status) {
                          setState(() {
                            _select = !_select;
                            // itemData[index].expanded =
                            //     !itemData[index].expanded;
                            print("Hi");
                          });
                        },
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ));
  }

  List<ItemModel> itemData = <ItemModel>[
    ItemModel(
        headerItem: 'New Payment',
        discription: [
          '-Face Recommendation \n',
          "-Buyer information: (after facial recognition) \n",
          "-Buyer's name.\n"
        ],
        colorsItem: Colors.black,
        img: 'assets/images/Log4.png'),
  ];
}

class ItemModel {
  bool expanded;
  String headerItem;
  final List discription;
  Color colorsItem;
  String img;

  ItemModel({
    this.expanded: false,
    this.headerItem: "",
    required this.discription,
    this.colorsItem: Colors.black,
    this.img: "",
  });
}
