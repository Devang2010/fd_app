import 'package:fd_app/screens/details/components/generwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
  double _height = 380;
  IconData icon = Icons.keyboard_arrow_up;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: _height,
      width: widget.size.width,
      // color: Colors.red[100],
      duration: Duration(milliseconds: 600),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 40,
            child: AnimatedContainer(
              height: _height,
              width: widget.size.width,
              duration: Duration(milliseconds: 600),
              decoration: BoxDecoration(
                color: Color(0xffeaecf9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // shrinkWrap: true,
                    // padding: EdgeInsets.zero,
                    children: <Widget>[
                      Center(
                        child: InkWell(
                          child: Icon(icon),
                          onTap: () {
                            setState(() {
                              if (_height == 380) {
                                _height = widget.size.height - 70;
                                icon = Icons.keyboard_arrow_down;
                              } else {
                                icon = Icons.keyboard_arrow_up;
                                _height = 380;
                              }
                            });
                          },
                        ),
                      ),
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
                        'data data data data data data data data data data'
                        '\n\n\n'
                        'data data data data data data data data data data'
                        'data data data data data data data data data data'
                        'data data data data data data data data data data',
                      ),
                    ],
                  ),
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
      // width: 50,
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
        backgroundColor: Colors.amber,
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
          "Anubhav Gupta ",
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
        SizedBox(width: 107),
        RichText(
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
          width: size.width * 0.68,
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
              "₹340.10",
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
            Text(
              " (70%)",
              style: TextStyle(color: Colors.grey, fontSize: 12.0),
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
        Text(
          "Recent donors",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 10.0),
        Row(
          children: <Widget>[
            CircleAvatar(
              radius: 22,
              backgroundColor: Colors.amber[100],
              // foregroundColor: Colors.black,
              child: SvgPicture.asset(
                'assets/svgs/avatar.svg',
                height: 40.0,
              ),
            ),
            SizedBox(width: 10.0),
            CircleAvatar(
              radius: 22,
              backgroundColor: Colors.amber[200],
              // foregroundColor: Colors.black,
              child: SvgPicture.asset(
                'assets/svgs/avatar.svg',
                height: 44.0,
              ),
            ),
            SizedBox(width: 10.0),
            CircleAvatar(
              radius: 22,
              backgroundColor: Colors.amber[300],
              // foregroundColor: Colors.black,
              child: SvgPicture.asset(
                'assets/svgs/avatar.svg',
                height: 44.0,
              ),
            ),
            SizedBox(width: 10.0),
            CircleAvatar(
              radius: 22,
              backgroundColor: Colors.amber[400],
              // foregroundColor: Colors.black,
              child: SvgPicture.asset(
                'assets/svgs/avatar.svg',
                height: 48.0,
              ),
            ),
            SizedBox(width: 10.0),
            CircleAvatar(
                radius: 22,
                backgroundColor: Colors.orangeAccent,
                foregroundColor: Colors.white,
                child: Text(
                  "99+",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                )),
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
      unselectedLabelColor: Colors.black,
      tabs: [
        Tab(
          child: Text("Story"),
        ),
        Tab(
          child: RichText(
            text: TextSpan(
              text: "Updates",
              style: TextStyle(
                color: Colors.black,
                fontSize: 13.0,
                fontWeight: FontWeight.w600,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: " (13)",
                  style: TextStyle(
                    fontSize: 10.5,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
        Tab(
          child: RichText(
            text: TextSpan(
              text: "Comments",
              style: TextStyle(
                color: Colors.black,
                fontSize: 13.0,
                fontWeight: FontWeight.w600,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: "(69)",
                  style: TextStyle(
                    fontSize: 10.5,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
