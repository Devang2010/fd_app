import 'package:flutter/material.dart';

class Quote extends StatelessWidget {
  const Quote({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        height: size.width * 0.82,
        width: size.width * 0.82,
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(220.0),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 35,
              left: 9,
              child: Image.asset(
                'assets/images/quotmark.png',
                height: 50.0,
              ),
            ),
            Positioned(
              top: 50,
              left: 80,
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
              left: 70,
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
              top: 270,
              left: 132,
              child: Text(
                "[QURAN]",
                style: TextStyle(
                  fontSize: 14.0,
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
