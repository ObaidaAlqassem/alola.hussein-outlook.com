// import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
// import 'package:nurse/Model/Nurse.dart';
// import 'package:nurse/Model/User.dart';

class SharedManager {
  static final SharedManager shared = SharedManager._internal();

  factory SharedManager() {
    return shared;
  }

  SharedManager._internal();

  int currentIndex = 0;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> drawerKey = GlobalKey();
  bool isIn = false;
  bool isPatient = false;
  bool isNurse = false;
  // LatLng latLng;
  // User user = User();
  // Nurse nurse = Nurse();
  Locale locale = Locale('en', '');
  bool isRTL = false;
  int notificationCount = 0;
}
