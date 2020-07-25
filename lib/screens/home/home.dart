import 'package:fd_app/screens/home/components/floatingbutton.dart';
import 'package:fd_app/screens/home/components/homebody.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  // Size size = MediaQuery.of(context).size;
  Widget appBar(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return PreferredSize(
      child: Container(
        decoration: BoxDecoration(
          // color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              left: 20.0, right: 20.0, top: 40.0, bottom: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: size.height * 0.055,
                width: size.width * 0.75,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(3, 3),
                      color: Colors.black26,
                      spreadRadius: -2.0,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(Icons.menu),
                      Text("Find Your Intrest"),
                      Icon(Icons.search)
                    ],
                  ),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.person_outline,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      preferredSize: Size.fromHeight(80),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: appBar(context),
      body: HomeBody(),
      floatingActionButton: FloatingButton(),
      backgroundColor: Color(0xffeaecf9),
    );
  }
}
