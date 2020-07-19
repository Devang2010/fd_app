import 'package:flutter/material.dart';

class BackImage extends StatelessWidget {
  const BackImage({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      alignment: Alignment.topCenter,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 240,
            width: size.width,
            alignment: Alignment.topCenter,
            child: Image.asset(
              "assets/images/img2.jpg",
              // fit: BoxFit.cover,
              // height: 523.7,
            ),
          );
        },
      ),
    );
  }
}
