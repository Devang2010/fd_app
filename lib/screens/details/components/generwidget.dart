import 'package:flutter/material.dart';

class GenerWidget extends StatelessWidget {
  const GenerWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[400]),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(
            "Life",
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),
        SizedBox(width: 10.0),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[400]),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(
            "Humanity",
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),
      ],
    );
  }
}
