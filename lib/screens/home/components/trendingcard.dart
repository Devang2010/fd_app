import 'package:fd_app/model/data.dart';
import 'package:fd_app/screens/details/details.dart';
import 'package:flutter/material.dart';

class TrendingCard extends StatelessWidget {
  const TrendingCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.width * 0.9,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: events.length,
        itemBuilder: (BuildContext context, int index) {
          return BuildCard(
            itemIndex: index,
            event: events[index],
          );
        },
      ),
    );
  }
}

class BuildCard extends StatelessWidget {
  final int itemIndex;
  final String image, title;
  final Event event;
  const BuildCard({
    Key key,
    this.image,
    this.title,
    this.itemIndex,
    this.event,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              event: events[itemIndex],
            ),
          ),
        );
      },
      child: Column(
        children: <Widget>[
          Container(
            height: size.width * 0.685,
            width: size.width * 0.54,
            margin: EdgeInsets.only(left: 20.0, top: 15.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(event.image),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26.withOpacity(0.23),
                  offset: Offset(1, 3),
                  blurRadius: 10,
                  spreadRadius: 3,
                ),
              ],
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: size.height * 0.028,
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                              text: "29",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13.0,
                                fontWeight: FontWeight.w500,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: " days left",
                                  style: TextStyle(
                                    fontSize: 11.5,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.grey,
                        child: Icon(
                          Icons.bookmark_border,
                          // color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0, top: 8.0),
            height: size.height * 0.065,
            width: size.width * 0.54,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    event.title,
                    style: TextStyle(
                      fontSize: 15.5,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: size.width * 0.335,
                        height: 3,
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      Container(
                        width: size.width * 0.18,
                        height: 3,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Total raised",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12.0,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: "₹396.365",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: " (68%)",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
