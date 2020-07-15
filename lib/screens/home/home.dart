import 'package:fd_app/screens/home/components/floatingbutton.dart';
import 'package:fd_app/screens/home/components/homebody.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffeaecf9),
      body: HomeBody(),
      floatingActionButton: FloatingButton(),
    );
  }
}
