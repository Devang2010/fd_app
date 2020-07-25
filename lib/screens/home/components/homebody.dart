import 'package:fd_app/model/data.dart';
import 'package:fd_app/screens/home/components/appbar.dart';
import 'package:fd_app/screens/home/components/categorytab.dart';
import 'package:fd_app/screens/home/components/eventcard.dart';
import 'package:fd_app/screens/home/components/quotecard.dart';
import 'package:fd_app/screens/home/components/storycard.dart';
import 'package:fd_app/screens/home/components/titlebutton.dart';
import 'package:fd_app/screens/home/components/trendingcard.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    List images = [
      'assets/images/img2.jpg',
      'assets/images/img1.jpg',
      'assets/images/moon.jpg',
      'assets/images/img4.jpg',
    ];
    return ListView(
      children: <Widget>[
        SizedBox(height: 10.0),
        Buildappbar(),
        SizedBox(height: 10.0),
        TitlewithButton(head: "Trending", sub: "MORE"),
        TrendingCard(
          image: images,
        ),
        SizedBox(height: 10.0),
        CategoryTab(),
        SizedBox(height: 20.0),
        TitlewithButton(head: "Inspiring stories", sub: "More"),
        StoryCard(
          image: stories[0].image,
          tag1: stories[0].tag1,
          tag2: stories[0].tag2,
          title: stories[0].title,
          subtitle: stories[0].subtitle,
        ),
        StoryCard(
          image: stories[1].image,
          tag1: stories[1].tag1,
          tag2: stories[1].tag2,
          title: stories[1].title,
          subtitle: stories[1].subtitle,
        ),
        StoryCard(
          image: stories[2].image,
          tag1: stories[2].tag1,
          tag2: stories[2].tag2,
          title: stories[2].title,
          subtitle: stories[2].subtitle,
        ),
        SizedBox(height: 20.0),
        EventCard(),
        SizedBox(height: 20.0),
        Quote(),
        SizedBox(height: 20.0),
        TitlewithButton(head: "Help these campaign too", sub: "More"),
        SizedBox(height: 90.0),
      ],
    );
  }
}
