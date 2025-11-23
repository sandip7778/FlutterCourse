import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First App "),
      ),
      body: Center(
        child: Text("First Application ",style: TextStyle(color: Colors.red,fontSize: 24),),
      ),
    );
  }
}
