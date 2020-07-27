import 'package:flutter/material.dart';

import 'screens/yellow.dart';
import './screens/purple.dart';
import './util/route_names.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Navigation',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        //Initialized routes
        initialRoute: RouteNames.YellowScreen,
        routes: {
          RouteNames.YellowScreen: (context) => Yellow(),
          RouteNames.PurpleScreen: (context) => Purple(),
        });
  }
}
