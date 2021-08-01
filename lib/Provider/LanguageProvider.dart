import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:goby/Shared/SharedManaged.dart';
import 'package:goby/Shared/SharedKeys.dart';
// import 'package:nurse/Shared/SharedKeys.dart';
// import 'package:nurse/Shared/SharedManaged.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:http/http.dart' as http;

class LanguageProvider extends ChangeNotifier {
  Locale locale = Locale('en', '');

  // Future postLanguage(String lang) async {
  //   String _url = 'http://jsonplaceholder.typicode.com/posts';
  //   Map<String, String> _body = {"user_language": lang};
  //   http.Response response = await http.post(Uri.parse(_url), body: _body);
  //   return json.decode(response.body);
  // }

  changeLanguage(String newLanguage) {
    // postLanguage(newLanguage);
    SharedPreferences.getInstance().then((value) {
      value.setString(SharedKeys.language, newLanguage);
      SharedManager.shared.locale = Locale(newLanguage, "");
      notifyListeners();
    });
  }

  getLanguage() {
    String whichLanguage;
    SharedPreferences.getInstance().then((value) {
      whichLanguage = value.getString(SharedKeys.language) ?? "en";
      this.locale = Locale(whichLanguage, '');
      SharedManager.shared.locale = this.locale;
      if (whichLanguage == "ar") SharedManager.shared.isRTL = true;
      if (whichLanguage == "en") SharedManager.shared.isRTL = false;
      notifyListeners();
    });
    return this.locale;
  }

// setIsSmaill(bool val) {
//   isSmall = val;
// }
// getIsSmall() {
//   return isSmall;
// }
}
