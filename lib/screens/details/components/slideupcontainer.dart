import 'package:fd_app/screens/details/components/generwidget.dart';
import 'package:flutter/material.dart';

class SlideUpContainer extends StatefulWidget {
  const SlideUpContainer({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  _SlideUpContainerState createState() => _SlideUpContainerState();
}

class _SlideUpContainerState extends State<SlideUpContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 440,
      width: widget.size.width,
      // color: Colors.red[100],
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 40,
            child: Container(
              height: 400,
              width: widget.size.width,
              decoration: BoxDecoration(
                color: Color(0xffeaecf9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(child: Icon(Icons.linear_scale)),
                    GenerWidget(),
                    SizedBox(height: 10.0),
                    Text(
                      "Help Rainforest in India recover\nfrom fire",
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Organiser(),
                    SizedBox(height: 10.0),
                    CustomDivider(),
                    SizedBox(height: 10.0),
                    TargetValue(),
                    SizedBox(height: 20.0),
                    RecentDonors(),
                    SizedBox(height: 20.0),
                    BuildTabbar(),
                    SizedBox(height: 20.0),
                    TopStory(),
                    SizedBox(height: 30.0),
                    Text(
                      'Data data data data data data data data data'
                      'data data data data data data data data data data'
                      'data data data data data data data data data data'
                      'data data data data data data data data data data'
                      'data data data data data data data data data data',
                    ),
                  ],
                ),
              ),
            ),
          ),
          BookMarkButton(),
        ],
      ),
    );
  }
}

class TopStory extends StatelessWidget {
  const TopStory({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[400]),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: RichText(
        text: TextSpan(
          text: "#1 ",
          style: TextStyle(
            color: Colors.orangeAccent,
            fontWeight: FontWeight.bold,
          ),
          children: [
            TextSpan(
              text: "Top 10 Story",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BookMarkButton extends StatelessWidget {
  const BookMarkButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      right: 40,
      child: CircleAvatar(
        radius: 28,
        backgroundColor: Colors.yellow[700],
        foregroundColor: Colors.white,
        child: Icon(Icons.bookmark),
      ),
    );
  }
}

class Organiser extends StatelessWidget {
  const Organiser({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          "Organised by ",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 13.0,
          ),
        ),
        Text(
          "Anubhav gupta ",
          style: TextStyle(
            color: Colors.orangeAccent,
            fontSize: 13.0,
          ),
        ),
        Icon(
          Icons.verified_user,
          size: 12.0,
          color: Colors.cyan,
        ),
        SizedBox(width: 94),
        Text(
          "29 Days Left",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 13.0,
          ),
        ),
      ],
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          width: size.width * 0.47,
          height: 3,
          decoration: BoxDecoration(
            color: Colors.orangeAccent,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        Container(
          width: size.width * 0.2,
          height: 3,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ],
    );
  }
}

class TargetValue extends StatelessWidget {
  const TargetValue({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Raised so for",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 13.0,
              ),
            ),
            SizedBox(width: size.width - 170),
            Text(
              "Target",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 13.0,
              ),
            ),
          ],
        ),
        SizedBox(height: 5.0),
        Row(
          children: <Widget>[
            Text(
              "₹240.10",
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
            Text(
              "(70%)",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(width: size.width - 180),
            Text(
              "₹400.00",
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ],
    );
  }
}

class RecentDonors extends StatelessWidget {
  const RecentDonors({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Recent donors"),
        SizedBox(height: 10.0),
        Row(
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.red[100],
              foregroundColor: Colors.black,
              child: Icon(Icons.person_outline),
            ),
            SizedBox(width: 10.0),
            CircleAvatar(
              backgroundColor: Colors.red[200],
              foregroundColor: Colors.black,
              child: Icon(Icons.person_outline),
            ),
            SizedBox(width: 10.0),
            CircleAvatar(
              backgroundColor: Colors.red[300],
              foregroundColor: Colors.black,
              child: Icon(Icons.person_outline),
            ),
            SizedBox(width: 10.0),
            CircleAvatar(
              backgroundColor: Colors.red[400],
              foregroundColor: Colors.black,
              child: Icon(Icons.person_outline),
            ),
            SizedBox(width: 10.0),
            CircleAvatar(
              backgroundColor: Colors.red[500],
              foregroundColor: Colors.black,
              child: Icon(Icons.person_outline),
            ),
            SizedBox(width: 10.0),
          ],
        ),
      ],
    );
  }
}

class BuildTabbar extends StatefulWidget {
  const BuildTabbar({
    Key key,
  }) : super(key: key);

  @override
  _BuildTabbarState createState() => _BuildTabbarState();
}

class _BuildTabbarState extends State<BuildTabbar>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: TabController(initialIndex: 0, length: 3, vsync: this),
      indicatorColor: Colors.black,
      indicatorSize: TabBarIndicatorSize.label,
      labelColor: Colors.black,
      unselectedLabelColor: Colors.grey,
      tabs: [
        Tab(
          child: Text("Story"),
        ),
        Tab(
          child: Text("Updates"),
        ),
        Tab(
          child: Text("Comments"),
        ),
      ],
    );
  }
}
