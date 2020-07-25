import 'package:flutter/material.dart';

class CategoryTab extends StatefulWidget {
  const CategoryTab({
    Key key,
  }) : super(key: key);

  @override
  _CategoryTabState createState() => _CategoryTabState();
}

class _CategoryTabState extends State<CategoryTab> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List categories = [
      'Medical',
      'Education',
      'Animal',
      'Science',
      'Nature',
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "Categories",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.5,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          height: size.width * 0.13,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20.0),
                height: size.height * 0.055,
                width: size.width * 0.25,
                decoration: BoxDecoration(
                  color: index.isEven ? Colors.amber : Colors.orange,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Text(
                  categories[index],
                  style: TextStyle(fontSize: 15.0),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
