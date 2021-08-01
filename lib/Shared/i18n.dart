import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class S implements WidgetsLocalizations {
  const S();

  static S current = S();

  static const GeneratedLocalizationsDelegate delegate =
      GeneratedLocalizationsDelegate();

  @override
  TextDirection get textDirection => TextDirection.ltr;

  String get appName => "ffff";

  String get userLogin => "USER LOGIN";

  String get partnerLogin => "PARTNER LOGIN";

  String get name => " Name";

  String get password => " Password";

  String get forgetPassword => " Forget Password";

  String get EnterRePassword => " Enter Re-Password";

  String get Enterusername => " Enter user name";

  String get logIn => " Log In";

  String get newAccount => " New account";

  String get enterUserName => "Enter User Name";

  String get enterPassword => "Enter Password";

  String get rePassword => "Re-Password";

  String get eMail => "E-Mail";

  String get phone => "Phone";

  String get tradeName => "Trade Name";

  String get userName => "UserName";

  String get IPAN => "IPAN";

  String get Sign_up => "Sign up";

  String get I_have_an_account => "I have an account";

  String get Enter_phone => "Enter phone ";

  String get EnterIPAN => "Enter IPAN";

  String get EnterEmail => "Enter E-mail";

  String get EnterPassword => "Enter Password";

  String get EnterTradeName => "Enter Trade Name";

  String get CreditCardNumber => "Credit Card Number";

  String get EnterNumber => "Enter Number";

  String get EnterName => "Enter Name";

  String get CreditCardOwnerName => "Credit Card Owner Name";

  String get faceId => "Face Id";

  String get sendCode => "Please write the code has been sent for user nam";

  String get code => "Code";

  String get profile => "profile";

  String get logOut => "Log out";

  String get inCorrectPassword => "Password must be identical";
  String get save => "Save";
}

class $ar extends S {
  const $ar();

  @override
  TextDirection get textDirection => TextDirection.rtl;

  @override
  String get appName => "للللل";
  @override
  String get save => "حفظ";

  @override
  String get profile => "الحساب الشخصي";

  @override
  String get logOut => "تسجيل الخروج";

  @override
  String get inCorrectPassword => "الرقم السري غير متطابق";

  @override
  String get code => "الرمز";

  @override
  String get sendCode => "ادخل الرمز الذي وصل اليك رجاءاً";

  @override
  String get userLogin => "الدخول كمشترك";

  @override
  String get EnterName => "ادخل الاسم";

  @override
  String get CreditCardNumber => "رقم البطاقة";

  @override
  String get faceId => "بصمة الوجه";

  @override
  String get CreditCardOwnerName => "اسم مالك البطاقة";

  @override
  String get EnterNumber => "ادخل الرقم";

  @override
  String get partnerLogin => "الدخول كبائع";

  @override
  String get name => "الاسم";

  @override
  String get EnterEmail => "ادخل الايميل";

  @override
  String get EnterTradeName => "ادخل الاسم التجاري";

  @override
  String get EnterRePassword => "تأكيد الرمز االسري";

  @override
  String get Enterusername => "ادخل الاسم";

  @override
  String get EnterPassword => "ادخل الرمز السري";

  @override
  String get password => "الرمز السري";

  @override
  String get forgetPassword => "نسيت كلمة السر";

  @override
  String get logIn => "تسجيل الدخول";

  @override
  String get newAccount => "حساب جديد";

  @override
  String get Enter_phone => "ادخل رقم الهاتف";

  @override
  String get EnterIPAN => "ادخل رقم الحساب";

  @override
  String get enterUserName => "الرجاء ادخال الاسم";

  @override
  String get enterPassword => "الرجاء ادخال الرمز السري";

  @override
  String get rePassword => "تأكيد كلمة السر";

  @override
  String get eMail => "الايميل";

  @override
  String get phone => "رقم الهاتف";

  @override
  String get tradeName => "اسم تجاري";

  @override
  String get userName => "اسم االمستخدم";

  @override
  String get Sign_up => "اشتراك";

  @override
  String get I_have_an_account => "لدي حساب";

  @override
  String get IPAN => "رقم حساب";
}

class $en extends S {
  const $en();
}

class GeneratedLocalizationsDelegate extends LocalizationsDelegate<S> {
  const GeneratedLocalizationsDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale("ar", ""),
      Locale("en", ""),
    ];
  }

  @override
  bool isSupported(Locale locale) {
    // Include all of your supported language codes here
    return ['en', 'ar'].contains(locale.languageCode);
  }

  @override
  Future<S> load(Locale locale) async {
    // AppLocalizations class is where the JSON loading actually runs
    final String lang = getLang(locale);

    switch (lang) {
      case "ar":
        S.current = const $ar();
        return SynchronousFuture<S>(S.current);
      //
      case "en":
        S.current = const $en();
        return SynchronousFuture<S>(S.current);
      default:
      // NO-OP.
    }

    S.current = const S();
    return SynchronousFuture<S>(S.current);
  }

  @override
  bool shouldReload(GeneratedLocalizationsDelegate old) => false;
}

String getLang(Locale l) => l.languageCode;
