import 'package:flutter/material.dart';

class Buildappbar extends StatelessWidget {
  const Buildappbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
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
    );
  }
}
