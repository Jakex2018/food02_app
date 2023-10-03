import 'package:flutter/material.dart';
import 'package:food02_app/models/products.dart';

class ProductsCard extends StatelessWidget {
  const ProductsCard({
    super.key, required this.product, required this.press,
  });

  final Product product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: press,
      ),
    );
  }
}