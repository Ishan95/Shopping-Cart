import 'package:flutter/material.dart';
import 'package:shopping_cart/produst/products.dart';
import 'package:shopping_cart/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      body: Body(product: product),
    );
  }
}