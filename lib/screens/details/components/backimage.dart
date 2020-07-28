import 'package:flutter/material.dart';

class BackImage extends StatelessWidget {
  const BackImage({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    List images = [
      'assets/images/img5.jpg',
      'assets/images/img1.jpg',
      'assets/images/moon1.jpg',
      'assets/images/img4.jpg',
    ];
    return Container(
      // height: size.height,
      // width: size.width,
      alignment: Alignment.topCenter,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            // height: 280,
            width: size.width * 1.1,
            alignment: Alignment.topCenter,
            child: Image.asset(
              images[index],
              // fit: BoxFit.contain,
              // height: 533.7,
            ),
          );
        },
      ),
    );
  }
}
