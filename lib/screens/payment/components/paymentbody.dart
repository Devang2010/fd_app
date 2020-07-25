import 'package:fd_app/screens/payment/components/amountbox.dart';
import 'package:fd_app/screens/payment/components/cardbox.dart';
import 'package:fd_app/screens/payment/components/donatenow.dart';
import 'package:fd_app/screens/payment/components/walletbox.dart';
import 'package:flutter/material.dart';

class PaymentBody extends StatefulWidget {
  @override
  _PaymentBodyState createState() => _PaymentBodyState();
}

class _PaymentBodyState extends State<PaymentBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Amountbox(),
          SizedBox(height: 70.0),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Pay with",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          Walletbox(),
          SizedBox(height: 15.0),
          CardBox(),
          Align(
            heightFactor: 9,
            alignment: Alignment.bottomCenter,
            child: DonatenowButton(),
          ),
        ],
      ),
    );
  }
}
