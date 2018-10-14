import 'package:flutter/material.dart';
import './pages/product.dart';
class Products extends StatelessWidget {
  final List products;

  Products(this.products) {
    print('Product Widget - Constructor');
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/food.jpg'),
          Text(products[index]),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ProductPage()));
              },
              child: Text('Details')
            )
            ]),
        ],
      ),
    );
  }

  Widget _buildProductList() {
    Widget productCard;
    if (products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    } else {
       productCard = Center(child: Text('No Products'));
    }
    return productCard;
    
  }

  @override
  Widget build(BuildContext context) {
    print('Product Widget - build()');
    return _buildProductList();
  }
}
