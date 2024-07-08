import 'package:ecommerce_flutter/models/cart_model.dart';
import 'package:ecommerce_flutter/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartTile extends StatefulWidget {
  final ProductModel cartItem;

  const CartTile({super.key, required this.cartItem});

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
  // remove item from cart
  void removeCartItem() {
    Provider.of<CartModel>(context, listen: false)
        .removeCartItems(widget.cartItem);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: const EdgeInsets.only(bottom: 10.0),
      child: ListTile(
        leading: Image.asset(widget.cartItem.imagePath),
        title: Text(widget.cartItem.name),
        subtitle: Text(widget.cartItem.price),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () => removeCartItem(), // calling the method with () fixed the issue
        ),
      ),
    );
  }
}
