import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      color: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 18.0),
        child: Text(
          'START CAMPAIGN',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
