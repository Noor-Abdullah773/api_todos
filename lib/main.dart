import 'package:flutter/material.dart';

import 'core/views/screens/homePage.dart';
import 'core/views/screens/showTodos.dart';
import 'helper/routManager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: ShowAllTodos(),
      initialRoute: "/homePage",
       onGenerateRoute: RoutManager.routeManager,
    );
  }
}
  