import 'package:fd_app/screens/donate/components/donatebody.dart';
import 'package:flutter/material.dart';

class DonateScreen extends StatelessWidget {
  AppBar appbar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Color(0xffeaecf9),
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Add Commments",
              style: TextStyle(color: Colors.black),
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context),
      backgroundColor: Color(0xffeaecf9),
      body: DonateBody(),
    );
  }
}
