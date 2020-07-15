import 'package:flutter/material.dart';

class Quote extends StatelessWidget {
  const Quote({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 340,
        width: 340,
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(220.0),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 30,
              left: 12,
              child: Icon(
                Icons.beach_access,
                size: 50.0,
              ),
            ),
            Positioned(
              top: 50,
              left: 90,
              child: Text(
                "QUOTE OF THE DAY",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Positioned(
              top: 120,
              left: 75,
              child: Text(
                'And give the relative his'
                '\nright, and [also] the poor'
                '\nand the travler, and don not'
                '\nspend wastefully.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Positioned(
              top: 280,
              left: 132,
              child: Text(
                "[QURAN]",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
