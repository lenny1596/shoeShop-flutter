import 'package:ecommerce_flutter/models/product_model.dart';
import 'package:flutter/material.dart';

import '../components/product_tile.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // search bar
        Container(
          padding: const EdgeInsets.all(14),
          margin: const EdgeInsets.symmetric(horizontal: 25.0),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search',
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              )
            ],
          ),
        ),

        // message
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
            'Run for a healthier, better life...',
            style: TextStyle(color: Colors.grey),
          ),
        ),

        // hot picks (text)
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hot picks 🔥',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'See all',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),

        const SizedBox(
          height: 10,
        ),

        // hot picks (items)
        Expanded(
          child: ListView.builder(
            // note: added padding to listview itself solved the issue instead of wrapping it with container.
            padding: const EdgeInsets.only(right: 25),
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              ProductModel product = ProductModel(
                name: 'Air Jordan',
                price: "300",
                imagePath: 'lib/images/shoe-4.png',
                description: 'Cool shoe',
              );
              return ProductTile(
                product: product,
              );
            },
          ),
        ),

        const Padding(
          padding: EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
          child: Divider(
            color: Colors.transparent,
          ),
        )
      ],
    );
  }
}
