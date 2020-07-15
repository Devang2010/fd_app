import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.14,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
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
      // height: size.height * 0.16,
      width: size.width - 50,
      margin: EdgeInsets.only(left: 20.0, top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: size.height * 0.15,
            width: size.width * 0.2,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/img1.jpg'),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(22.0),
            ),
          ),
          Container(
            // height: size.height * 0.14,
            width: size.width - 150,
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
                          "Once",
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
                          "data",
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: Text(
                    "Once a tenent always a tenent.",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle:
                      Text("Something has to be done before its get out "),
                )
              ],
            ),
          ),
          // Container()
        ],
      ),
    );
  }
}
