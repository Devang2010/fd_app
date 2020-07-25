import 'package:fd_app/screens/payment/payment.dart';
import 'package:flutter/material.dart';

class DonateBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Container(
              height: 360,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/img1.jpg"),
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Text(
            "Donate",
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '₹ 0',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.keyboard_capslock,
                size: 28.0,
              ),
            ],
          ),
          Align(
            child: FlatButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PaymentScreen(),
                ),
              ),
              color: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              padding: EdgeInsets.symmetric(horizontal: 120.0, vertical: 16.0),
              child: Text(
                "Donate",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
