import 'package:fd_app/model/data.dart';
import 'package:fd_app/screens/details/components/detailbody.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Event event;
  const DetailScreen({Key key, this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Colors.black,
      body: DetailBody(
        event: event,
      ),
    );
  }
}
