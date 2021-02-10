// others
import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
      ],
      // home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        // se lanza cuando la ruta que se quiere acceder no está definida 
        // en este caso redirecciona a AlertPage
        return MaterialPageRoute(builder: (context) => AlertPage());
      },
    );
  }
}
