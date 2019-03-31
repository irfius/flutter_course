import 'package:flutter/material.dart';
import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct}) {
    print('Products Manager constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('Products Manager createState()');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    super.initState();
    print('Products Manager initState()');
    if (widget.startingProduct != null) {
      _products.add(widget.startingProduct);
    }
  }

  void _addProduct(String newProduct) {
    this.setState(() {
      _products.add(newProduct);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(
            addProduct: _addProduct,
          )),
      Expanded(
        child: Products(this._products),
      )
    ]);
  }
}
