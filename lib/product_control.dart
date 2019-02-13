import 'package:flutter/material.dart';

class ProductsControl extends StatelessWidget {

  final Function addProduct;

  ProductsControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            addProduct('Sweets');
          },
          child: Text('Add Product'),
        );
  }
  
  


}