import 'package:flutter/material.dart';

class DonatenowButton extends StatelessWidget {
  const DonatenowButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      // width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.black,
      ),
      child: FlatButton(
        onPressed: () {
          showDialog(
            context: context,
            child: AlertDialog(
              contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              content: Container(
                height: 60.0,
                width: 60.0,
                child: Icon(Icons.save),
              ),
            ),
          );
        },
        padding: EdgeInsets.symmetric(horizontal: 80.0),
        child: Text(
          "Donate Now",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
