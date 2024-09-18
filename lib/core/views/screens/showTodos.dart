import 'package:flutter/material.dart';
import 'package:todos_app/core/view_model/todosVm.dart';

class ShowAllTodos extends StatefulWidget {
  const ShowAllTodos({super.key});

  @override
  State<ShowAllTodos> createState() => _ShowAllTodosState();
}

class _ShowAllTodosState extends State<ShowAllTodos> {
 
  TodosVM tvm = TodosVM();
   bool isCompleted=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future:tvm.getAllTodo() ,
        builder:(ctx,snapshot){
           if(snapshot.connectionState==ConnectionState.done)
           {
            //return Text("done");
            return ListView.builder(
                itemCount:snapshot.data!.length ,
                itemBuilder: (ctx,index){
                  return Container(child: Column(children: [
                    
                    ListTile(title: Text("${snapshot.data![index].todo!}"),
                    leading: CircleAvatar(child: Center(child: Text("${snapshot.data![index].userId!}"),),),
                    subtitle:Text(snapshot.data![index].completed! ? 'Comple':'unCompleted',style: TextStyle(
                      color: snapshot.data![index].completed! ? Colors.green:Colors.red
                     ),) ,
                    )
                  ],),);
                },
              );
           }
           else
           {
            return Text("not complate");
           }
        }),
    );
  }
}