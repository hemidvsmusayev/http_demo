import 'package:flutter/material.dart';
import 'package:http_demo/models/product.dart';

class ProductListRowWidget extends StatelessWidget{
  Product product;

  ProductListRowWidget(this.product);

  @override
  Widget build(BuildContext context) {
    return buildProductItemCard(context);
  }

  Widget buildProductItemCard(BuildContext context) {
    return InkWell(
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              child: Image.network("https://cdn.pixabay.com/photo/2020/06/17/19/19/paris-5310783_1280.jpg"),
              height: 130.0,
              width: MediaQuery.of(context).size.width/2,
            ),
            Text(product.productName),
            Text(product.unitPrice.toString() + "AZN", style: TextStyle(color: Colors.grey, fontSize: 12.0),)
          ],
        ),
      ),
    );
  }
}