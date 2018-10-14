import 'package:flutter/material.dart';
import 'package:first_app/products.dart';
import 'product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct}) {
     print('ProductManager Widget - Constructor');
  }

  _ProductManagerState createState() => _ProductManagerState();
}

class _ProductManagerState extends State<ProductManager> {
  List _products = [];
  
  @override

  void initState() { 
    print('ProductManager State - InitState()');
    super.initState();

    if(widget.startingProduct != null) {
      _products.add(widget.startingProduct); 
    }
    
  }

  didUpdateWidget(ProductManager oldWidget) {
    print('ProductManager State - DidUpdate()');
    super.didUpdateWidget(oldWidget);
  }

  void _addProduct(String products) {
     setState(() {
              _products.add(products);
     });
  }

  Widget build(BuildContext context) {
     print('ProductManager State - Build()');
    return Column(children: [
      Container(
        padding: EdgeInsets.all(10.0),
        child: ProductControl(_addProduct)
      ),
      Expanded(child: Products(_products))
    ]);
  }
}
