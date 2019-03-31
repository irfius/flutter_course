import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products) {
    print('Products widget constructor');
  }

  Widget _buildProductItem(BuildContext content, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/food.jpg'),
          Text(products[index])
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    print('Products widget build');
    Widget productCard = Center(
      child: Text('Please add Product'),
    );
    if (products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    }
    return productCard;
  }
}
