import 'package:goby/Shared/i18n.dart';

class Constants{
  String d=S.current.profile;
  static  String Profile = S.current.profile;
  static String LogOut = S.current.logOut;


  static  List<String> choices = <String>[
    Profile,
    LogOut,

  ];
}
