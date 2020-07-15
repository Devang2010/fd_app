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
    return ListView(
      children: <Widget>[
        Buildappbar(),
        SizedBox(height: 10.0),
        TitlewithButton(head: "Treanding", sub: "More"),
        TrendingCard(),
        SizedBox(height: 10.0),
        CategoryTab(),
        SizedBox(height: 20.0),
        TitlewithButton(head: "Inspiring stories", sub: "More"),
        StoryCard(),
        StoryCard(),
        StoryCard(),
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
