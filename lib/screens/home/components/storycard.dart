import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final List title, subtitle, tag1, tag2, image;
  const StoryCard({
    Key key,
    this.title,
    this.subtitle,
    this.tag1,
    this.tag2,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.width * 0.4,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return BuildCard(
            image: image[index],
            tag1: tag1[index],
            tag2: tag2[index],
            title: title[index],
            subtitle: subtitle[index],
          );
        },
      ),
    );
  }
}

class BuildCard extends StatelessWidget {
  final String title, subtitle, tag1, tag2, image;
  const BuildCard({
    Key key,
    this.title,
    this.subtitle,
    this.tag1,
    this.tag2,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // height: size.height * 0.15,
      width: size.width - 50,
      margin: EdgeInsets.only(left: 20.0, top: 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: size.width * 0.35,
            width: size.width * 0.22,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(22.0),
            ),
          ),
          Container(
            height: size.width * 0.35,
            width: size.width - 150,
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[400]),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text(
                          tag1,
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[400]),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text(
                          tag2,
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(subtitle),
                ),
              ],
            ),
          ),
          // Container()
        ],
      ),
    );
  }
}
