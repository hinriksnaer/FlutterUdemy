import 'dart:async';

import 'package:flutter/material.dart';
import '../widgets/ui_elements/title_default.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;
  final double price;
  final String description;

  ProductPage(this.title, this.imageUrl, this.price, this.description);

  Widget _buildAddressPriceRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Union Square, San Francisco',
          style: TextStyle(
            fontFamily: 'Oswald',
            color: Colors.grey,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          child: Text(
            '|',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        Text(
          '\$${price.toString()}',
          style: TextStyle(
            fontFamily: 'Oswald',
            color: Colors.grey,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print('Back button pressed!');
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(imageUrl),
            Container(
                padding: EdgeInsets.all(10.0), child: TitleDefault(title)),
            _buildAddressPriceRow(),
            Container(
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.center,
              child: Text(
                  'asdf asdf asdf asdf  asdfasdfj asddghasdlkjgh saldkhfasdkhf blaskdfh askdhf adshb fkasdhf blasksfhliasduhglasirsjgh asufjnhla wekfjhblairg hlaisufh laisdufh iasudhf lawerfh liawruhg iasruf jghsldsu',
                  textAlign: TextAlign.center),
            ),
          ],
        ),
      ),
    );
  }
}
