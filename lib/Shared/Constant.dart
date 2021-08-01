import 'package:flutter/material.dart';

class AppColor {
  static Color colorStart = hexToColor('#fe3967');
  static Color colorCenter = hexToColor('#ff7a6e');
}

class LogoImage {
  static const String _asset = "assets/logo/";

  static const AssetImage mainLogo = AssetImage(_asset + "logo.png");
}

class SocialImage {
  static const String _asset = "assets/social_login/";

  static const AssetImage google = AssetImage(_asset + "google.png");
  static const AssetImage facebook = AssetImage(_asset + "facebook.png");
}

class SocialImageDrawer {
  static const String _asset = "assets/social/";
  static const AssetImage facebook = AssetImage(_asset + "facebook.png");
  static const AssetImage instagram = AssetImage(_asset + "instagram.png");
  static const AssetImage snapchat = AssetImage(_asset + "snapchat.png");
  static const AssetImage tikTok = AssetImage(_asset + "tik-tok.png");
  static const AssetImage whatsapp = AssetImage(_asset + "whatsapp.png");
}

class NavImage {
  static const String _asset = "assets/nav_bar/";

  static const AssetImage tab1 = AssetImage(_asset + "digital-word.png");
  static const AssetImage tab2 = AssetImage(_asset + "employee.png");
  static const AssetImage tab3 =
      AssetImage(_asset + "fastdrive_logo_color_shadow.png");
  static const AssetImage tab4 = AssetImage(_asset + "car-private.png");
  static const AssetImage tab5 =
      AssetImage(_asset + "personal-information.png");
}

class GlobalImage {
  static const String _asset = "assets/global/";
  static const AssetImage bgLocation = AssetImage(_asset + "bg.jpeg");
  static const AssetImage bell = AssetImage(_asset + "bell.png");
  static const AssetImage messages = AssetImage(_asset + "email.png");
}

class NurseDashbord {
  static const String _asset = "assets/nurse-dashbord/";
  static const AssetImage profile = AssetImage(_asset + "profile.png");
  static const AssetImage appoiments = AssetImage(_asset + "appoiments.png");
  static const AssetImage history = AssetImage(_asset + "history.png");
  static const AssetImage newOrders = AssetImage(_asset + "new-orders.png");
}

class HomeSlider {
  static const String _asset = "assets/home-slider/";
  // static const AssetImage nuresSlider = AssetImage(_asset + "nures-slider.jpeg");
  static const AssetImage topImage = AssetImage(_asset + "top-image.png");
  static const AssetImage image1 = AssetImage(_asset + "image-1.jpeg");
  static const AssetImage image2 = AssetImage(_asset + "image-2.jpeg");
  static const AssetImage image3 = AssetImage(_asset + "image-3.jpeg");
  static const AssetImage image4 = AssetImage(_asset + "image-4.png");
}

Color hexToColor(String code) {
  return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

double screenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double screenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

setHeightSpace(double height) {
  return SizedBox(height: height);
}

setWithSpace(double width) {
  return SizedBox(width: width);
}
