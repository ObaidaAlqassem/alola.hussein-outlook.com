import 'package:flutter/material.dart';
// import 'package:nurse/Provider/language/LanguageProvider.dart';
// import 'package:nurse/Route/MoveNavigator.dart';
// import 'package:nurse/Shared/i18n.dart';

import 'package:provider/provider.dart';

import 'Provider/LanguageProvider.dart';
import 'Shared/i18n.dart';
import 'View/LogIn/DetermineUser.dart';

class LanguagePage extends StatefulWidget {
  @override
  _LanguagePageState createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    LanguageProvider languageProvider = Provider.of<LanguageProvider>(context);
    return SafeArea(
      child: Scaffold(

        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListTile(
                title: Text('English'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  languageProvider.changeLanguage('en');
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                      builder: (context) => DetermineUser()
                  ));

                },
              ),
              Divider(),
              ListTile(
                title: Text('العربي'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  languageProvider.changeLanguage('ar');
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                      builder: (context) => DetermineUser()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
