import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;
  
  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton(
          onPressed: () {
            addProduct('Vegitable');
          },
          child: Text('Add More'),
        ),
    );
  }
}