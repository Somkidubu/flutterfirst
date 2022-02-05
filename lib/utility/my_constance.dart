import 'package:flutter/material.dart';

class myConstant {
  static String appname = 'MyApp';

  //Route
  static String routeAuthen = '/authen';
  static String routeCreateAccount = '/createAccount';

  static String image1 = 'images/image1.png';
  static String image2 = 'images/image2.png';
  static String image3 = 'images/image3.png';

  static Color primary = Color(0xffce93d8);
  static Color dark = Color(0xff9c64a6);
  static Color light = Color(0xffffc4ff);

  TextStyle h1Style() => TextStyle(
        fontSize: 25,
        color: primary,
        fontWeight: FontWeight.bold,
      );
  TextStyle h2Style() => TextStyle(
        fontSize: 18,
        color: primary,
        fontWeight: FontWeight.w700,
      );
  TextStyle h3Style() => TextStyle(
        fontSize: 14,
        color: primary,
        fontWeight: FontWeight.normal,
      );
}
