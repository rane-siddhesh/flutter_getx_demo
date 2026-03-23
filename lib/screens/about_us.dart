import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget{
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("About Us", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
      ),
    );
  }
}