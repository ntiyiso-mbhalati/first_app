import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Detail"),
      ),
      body: Column(
        children: [
          Image.asset('assets/food.jpg'),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text('You are on the Product Detail Page'),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              onPressed: () => Navigator.pop(context),
              child: Text('Back!'),
            ),
          )
        ],
      ),
    );
  }
}
