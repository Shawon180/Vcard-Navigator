import 'package:flutter/material.dart';
class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xff487eb0),

          title: Center(child: const Text("Second Page")),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Back to next Page',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            backgroundColor: Colors.greenAccent
          ),),
        ),
      ),
    );
  }
}