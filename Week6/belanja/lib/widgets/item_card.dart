import 'package:flutter/material.dart';
import 'package:belanja/model/item.dart';

class ItemCard extends StatelessWidget {
  final Item item;

  const ItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          '/item',
          arguments: item,
        );
      },
      child: Card(
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity, 
              child: Image.asset(
                item.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(item.name),
                  Text('Price: Rp${item.price}'),
                  Text('Stock: ${item.stock}'),
                  Text('Rating: ${item.rating}'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
