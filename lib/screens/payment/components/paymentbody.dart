import 'package:flutter/material.dart';

class PaymentBody extends StatelessWidget {
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
            child: Container(
              height: 50.0,
              // width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.black,
              ),
              child: FlatButton(
                onPressed: () {},
                padding: EdgeInsets.symmetric(horizontal: 80.0),
                child: Text(
                  "Donate Now",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w300),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardBox extends StatelessWidget {
  const CardBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white54.withBlue(255),
        border: Border.all(color: Colors.black26),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(
                Icons.call_to_action,
                size: 19.0,
              ),
            ),
            Text("Harsh"),
            SizedBox(width: 130.0),
            Text(
              "...3580",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              width: 40,
              child: Icon(
                Icons.check,
                size: 16,
                color: Colors.green,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Walletbox extends StatelessWidget {
  const Walletbox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.yellow[100].withOpacity(0.5),
        border: Border.all(color: Colors.black26),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(
                Icons.account_balance_wallet,
                size: 20.0,
              ),
            ),
            SizedBox(width: 13.0),
            Text("Wallet"),
          ],
        ),
      ),
    );
  }
}

class Amountbox extends StatelessWidget {
  const Amountbox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.black12,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Amount"),
            SizedBox(width: 180.0),
            Text(
              "₹6,000",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.black45,
            ),
          ],
        ),
      ),
    );
  }
}
