// others
import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/pages/avatar_page.dart';
import 'package:components/src/pages/home_page.dart';
import 'package:flutter/material.dart';
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomePage(),
        'alert': (BuildContext context) => AlertPage(),
        'avatar': (BuildContext context) => AvatarPage(),
      },
    );
  }


}


