import 'package:dio/dio.dart';
import 'package:todos_app/core/models/todos.dart';

class TodosVM{
    List<Todos> list=[];
    // List<Todos>? listComplete=[];
    Future<List<Todos >?> getAllTodo()async{
    Dio d = Dio(); //يعمل ٌ
    Response<dynamic> res=await d.get("https://dummyjson.com/todos") as Response<dynamic >;
    final Map<String,dynamic> allTodos = res.data;
    final List<dynamic> TolList=allTodos['todos'];
     list = TolList.map((e)=> Todos.fromJson(e)).toList();
    
    print(allTodos);
    return list;
  }
 /* Future<List<Todos >?> getCompletedTodo()async{
       listComplete = list.where((element) => element.completed==true).toList();
    return list;
  }
   Future<List<Todos >?> getUnCompletedTodo()async{
   list.where((element) => element.completed==false);
    return list;
  }*/
  
}