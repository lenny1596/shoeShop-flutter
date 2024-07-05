import 'package:ecommerce_flutter/components/cart_tile.dart';
import 'package:ecommerce_flutter/models/cart_model.dart';
import 'package:ecommerce_flutter/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'My Cart',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: value.getCartItems().length,
                itemBuilder: (context, index) {
                  // get the items in the cart
                  ProductModel cartItem = value.getCartItems()[index];
                  return CartTile(cartItem: cartItem);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
