import 'package:flutter/material.dart';

void main() {
  // This home property signifies what must be present at
  // the home screen
  runApp(MaterialApp(
      home:
          //Here we'r using the instance of the Home class
          Home()));
}

/*

Stateless Widget -> the state of the widget  cannot change over time 

Stateful Widget -> the state of the widget can change over time 

*/
//Reason of using Stateless Widget is it helps in hot reload
//Inside this class we'll going to use Stateless Widget
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //here every widget is itself a class
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text('My first Flutter App'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),

      // ignore: prefer_const_constructors
      body: Center(
        child:
         ElevatedButton(
            // ignore: prefer_const_constructors
           
            onPressed:(),{},
            child: Text('Click Me'),
            
           ),
      ),
      //   ),

      //Center
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.greenAccent,
      ),
    );
  }
}
