import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("MediCall",
        style: TextStyle(color: Color.fromARGB(255, 64, 10, 151)),
         
        ),
        centerTitle: true,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.search),
          )
          // IconButton(onPressed: (){}, icon: Icon(Icons.notifications,
          // color: Color.fromARGB(255, 64, 10, 151),
          // ))
        ],

    ),
    body: Column(children: [
      Padding(
        padding: EdgeInsets.all(18.0),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)
            // borderRadius: BorderRadius.all(Radius.circular(10))
            ),
          prefix: Icon(Icons.search),
          hintText: "Search for hospital or address",
        
            
          ),
          

        
        ),
      )
    ],),
    );
  }
}