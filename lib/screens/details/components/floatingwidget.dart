import 'package:fd_app/screens/donate/donate.dart';
import 'package:flutter/material.dart';

class FloatingWidget extends StatelessWidget {
  const FloatingWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 40,
      right: 40,
      bottom: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CircleAvatar(
            radius: 28,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            child: Icon(Icons.cloud_upload),
          ),
          FlatButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DonateScreen(),
              ),
            ),
            color: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 70.0, vertical: 18.0),
              child: Text(
                "Donate",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
