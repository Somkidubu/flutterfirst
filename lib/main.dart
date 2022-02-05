import 'package:flutter/material.dart';
import 'package:myapp01/states/authen.dart';
import 'package:myapp01/states/newaccount.dart';
import 'package:myapp01/utility/my_constance.dart';

final Map<String, WidgetBuilder> map = {
  // ignore: prefer_const_constructors
  '/authen': (BuildContext context) => Authen(),
  // ignore: prefer_const_constructors
  '/createAccount': (BuildContext context) => CreateAccount(),
};

String? initialRoute;

void main() {
  initialRoute = myConstant.routeAuthen;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: myConstant.appname,
      routes: map,
      initialRoute: initialRoute,
    );
  }
}
