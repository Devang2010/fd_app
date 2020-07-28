import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.width * 0.68,
      child: Swiper(
        itemCount: 3,
        loop: false,
        viewportFraction: 0.9,
        scale: 0.2,
        outer: true,
        scrollDirection: Axis.horizontal,
        pagination: SwiperPagination(
          alignment: Alignment.bottomCenter,
        ),
        itemBuilder: (context, index) {
          return BuildCard();
        },
      ),
    );
  }
}

class BuildCard extends StatelessWidget {
  const BuildCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // height: size.width * 0.2,
      width: size.width - 60,
      margin: EdgeInsets.only(left: 0.0, top: 10.0, bottom: 10.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/img3.jpg"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10.0,
            spreadRadius: 0.5,
          ),
        ],
      ),
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'SAVE OUR'
                '\nOCEAN'
                '\nMOVEMENT',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
              FlatButton(
                // padding: EdgeInsets.symmetric(vertical: 0),
                onPressed: () {},
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text("Join"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
