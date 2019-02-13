import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {

  final String startingProduct;

  ProductManager({this.startingProduct = 'Sweets Tester'}) {
    print('[Product Manager Widget] Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[Products Widget] createState()');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    super.initState();
    print('[Products State] intistate');
    _products.add(widget.startingProduct);
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('[Products State] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            setState(() {
              _products.add('Advanced Food Tester');
            });
          },
          child: Text('Add Product'),
        ),
      ),
      Products(_products)
    ]);
  }
}
