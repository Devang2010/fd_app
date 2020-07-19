import 'package:fd_app/screens/details/components/backimage.dart';
import 'package:fd_app/screens/details/components/floatingwidget.dart';
import 'package:fd_app/screens/details/components/slideupcontainer.dart';
import 'package:flutter/material.dart';

class DetailBody extends StatefulWidget {
  @override
  _DetailBodyState createState() => _DetailBodyState();
}

class _DetailBodyState extends State<DetailBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // double heigh = size.height * 0.55;
    return Stack(
      children: <Widget>[
        BackImage(size: size),
        Positioned(
          top: 60.0,
          left: 20.0,
          child: InkWell(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: SlideUpContainer(size: size),
        ),
        FloatingWidget(),
      ],
    );
  }
}
