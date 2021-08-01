import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:goby/View/HomePage/HomePagePartner.dart';

import 'Provider/LanguageProvider.dart';
import 'Shared/i18n.dart';
import 'View/HomePage/HomePageUser.dart';
import 'View/HomePage/ProfilePage.dart';
import 'View/HomePage/item.dart';
import 'View/LogIn/CreateAccountPartner.dart';
import 'View/LogIn/CreateAccountUser.dart';
import 'View/LogIn/DetermineUser.dart';
import 'View/LogIn/ForgetPasswiord.dart';
import 'View/LogIn/UserLogIn.dart';

import 'package:provider/provider.dart';

import 'localization.dart';

 main()async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(
  MyApp());
}
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//
//       title: 'Flutter Demo',
//       theme: ThemeData(
//
//
//         primarySwatch: Colors.blue,
//       ),
//       home:DetermineUser(),
//     );
//   }
// }
//

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiProvider(
      providers: [
        // ChangeNotifierProvider<ThemeDataProvider>.value(
        //     value: ThemeDataProvider()),
        ChangeNotifierProvider<LanguageProvider>.value(
            value: LanguageProvider()),
        // ChangeNotifierProvider<AuthProvider>.value(value: AuthProvider()),
      ],
      child: TheMainApp(),
    );
  }
}

class TheMainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ThemeDataProvider themeDataProvider =
    //     Provider.of<ThemeDataProvider>(context);
    LanguageProvider languageProvider = Provider.of<LanguageProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: themeDataProvider.getTheme(),
      locale: languageProvider.getLanguage(),
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        S.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      // localeListResolutionCallback:
      // S.delegate.listResolution(fallback: Locale('en', '')),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          // color: hexToColor("#00beb2"),
        ),
        // scaffoldBackgroundColor: hexToColor("#e5eff0"),
        // fontFamily: "Ara Hamah Sahet AlAssi Regular",
        // buttonColor: hexToColor("#00beb2"),
        // color: hexToColor("#00beb2"),
        // buttonTheme: ButtonThemeData(
        //   buttonColor: hexToColor("#00beb2"),
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(10),
        //   ),
        // ),
      ),
      home: DetermineUser(),
    );
  }
}
