import 'package:flutter/material.dart';

class TitlewithButton extends StatelessWidget {
  final String head, sub;
  const TitlewithButton({
    Key key,
    this.head,
    this.sub,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            head,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.5,
            ),
          ),
          Text(
            sub,
            style: TextStyle(
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
