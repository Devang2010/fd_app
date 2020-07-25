import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            height: size.width * 0.13,
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
                  SvgPicture.asset(
                    "assets/svgs/menu.svg",
                    height: 18.0,
                  ),
                  Text(
                    "Find campagin, charities",
                    style: TextStyle(color: Colors.black38),
                  ),
                  Icon(Icons.search)
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.orange[200],
                  blurRadius: 10.0,
                  spreadRadius: -1.5,
                  offset: Offset(0, 6),
                ),
              ],
              color: Colors.orange[200],
            ),
            child: SvgPicture.asset(
              'assets/svgs/avatar.svg',
              height: 44.0,
            ),
          ),
        ],
      ),
    );
  }
}
