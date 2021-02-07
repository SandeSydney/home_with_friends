import 'package:flutter/material.dart';

// name text style constant
const kNameTextStyle = TextStyle(
  fontSize: 28.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

// amount text style constant
const kAmountTextStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

// details text style constant
const kDetailTextStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.normal,
  color: Colors.blue,
);

// custom AppBar
class AppBarDetails extends StatelessWidget {
  const AppBarDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Hello,', style: kNameTextStyle),
                Text('Anne Kibe', style: kNameTextStyle),
              ],
            ),
            IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
                size: 36.0,
              ),
              padding: EdgeInsets.only(bottom: 15.0, top: 0),
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(
          height: 11.0,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('KSH. 135.50', style: kAmountTextStyle),
                  Text('Today\'s Earnings', style: kDetailTextStyle),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('KSH. 2,360.30', style: kAmountTextStyle),
                  Text('Total Earnings', style: kDetailTextStyle),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
