import 'package:flutter/material.dart';
import 'package:todos_app/core/view_model/todosVm.dart';

import '../../models/todos.dart';

class UnCompleted extends StatefulWidget {
  const UnCompleted({super.key});

  @override
  State<UnCompleted> createState() => _UnCompletedState();
}

class _UnCompletedState extends State<UnCompleted> {
 
  TodosVM tvm = TodosVM();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Todo UnCompleted"),),
      body: FutureBuilder(
        future:tvm.getAllTodo() ,
        builder:(ctx,snapshot){
           if(snapshot.connectionState==ConnectionState.done)
           {
             List<Todos>? completed =snapshot.data?.where((element) => element.completed==false).toList();
             if(completed != null)
             {
              return ListView.builder(
                itemCount:completed.length ,
                itemBuilder: (ctx,index){
                    return Container(child: Column(children: [
                    ListTile(title: Text("${completed[index].todo}"),
                    leading: CircleAvatar(child: Center(child: Text("${completed[index].userId}"),),),
                    subtitle:Text("${completed[index].completed}") ,
                    )
                  ],),);
                
                  
                },
              );
             }
           
           }
          
            return Text("not complate");
          
           
        }),
    );
  }
}