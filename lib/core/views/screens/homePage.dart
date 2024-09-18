import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          InkWell(
            child: Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.green
              ),
              child: Center(child: Text("completed")),
            ),
            onTap:(){
              Navigator.pushNamed(context, '/completed');
            }
          ),
          InkWell(
            child: Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.green
              ),
               child: Center(child: Text("Uncompleted")),
            ),
            onTap: (){
              Navigator.pushNamed(context,'/unCompleted');
            },
          ),
          InkWell(
            child: Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.green
              ),
               child: Center(child: Text("all")),
            ),
            onTap: (){
              Navigator.pushNamed(context,'/showAll');
            },
          )
        ],), 
      ),
    );
  }
}