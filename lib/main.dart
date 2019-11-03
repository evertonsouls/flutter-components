import 'package:flutter/material.dart';

import 'src/pages/alert_page.dart';
import 'src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      // onGenerateRoute: (settings) {},
      onUnknownRoute: (_) => MaterialPageRoute(builder: (_) => AlertPage()),
    );
  }
}
