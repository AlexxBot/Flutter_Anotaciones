import 'package:flutter/material.dart';
import 'package:flutter_app/pages/counter_page.dart';
import 'package:flutter_app/pages/stack_page.dart';

import 'pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //rotes
      //thema
      //localizacion
      //internalizacion (languaje)
      title: 'Flutter App',
      theme:
          ThemeData(primarySwatch: Colors.blue, accentColor: Colors.blueAccent),
      //home: Container(color: Colors.red, child: Text("HOLA MUNDO")), //div
      initialRoute: '/counterPage',
      routes: {
        '/homePage': (_) => HomePage(),
        '/stackPage': (_) => StackPage(),
        '/counterPage': (_) => CounterPage()
      },
    );
  }
}
