import 'package:flutter/material.dart';
import 'package:insta/util/shop_grid.dart';

class UserShop extends StatelessWidget {
  const UserShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Shop title on the left
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Shop'),
            ),
            // Search bar on the right
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                color: Colors.grey[300],
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(width: 4),  // Add a small space between the icon and text
                      Text('Search'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: ShopGrid(),
    );
  }
}
