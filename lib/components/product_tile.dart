import 'package:ecommerce_flutter/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final ProductModel product;

  const ProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25.0),
      width: 260,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          // Image
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(product.imagePath),
          ),
          // description
          // price + details

          // button to add-to-cart
        ],
      ),
    );
  }
}
