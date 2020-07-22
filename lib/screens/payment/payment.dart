import 'package:fd_app/screens/payment/components/paymentbody.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  AppBar appbar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Color(0xffeaecf9),
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      centerTitle: true,
      title: Text(
        "Payment",
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context),
      backgroundColor: Color(0xffeaecf9),
      body: PaymentBody(),
    );
  }
}
