import 'package:flutter/material.dart';

import '../core/views/screens/completed.dart';
import '../core/views/screens/homePage.dart';
import '../core/views/screens/showTodos.dart';
import '../core/views/screens/unCompleted.dart';


class RoutManager{
  static Route<dynamic>? routeManager(RouteSettings settings ) 
  {
     switch(settings.name){
      case '/homePage': return MaterialPageRoute(builder: (ctx)=>HomePage());
      case '/showAll': return MaterialPageRoute(builder: (ctx)=>ShowAllTodos());
      case '/completed': return MaterialPageRoute(builder: (ctx)=>Completed());
      case '/unCompleted': return MaterialPageRoute(builder: (ctx)=>UnCompleted());
     
      
    }
  }
}