import 'package:flutter/material.dart';
import 'package:shophomies/screen/product.dart';

class RecommendationsPage extends StatelessWidget {
  const RecommendationsPage({Key? key}) : super(key: key); // Corrected constructor

  @override
  Widget build(BuildContext context) {
    List<Product> recommendedProducts = getRecommendedProducts();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Recommended Products'),
      ),
      body: ListView.builder(
        itemCount: recommendedProducts.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(recommendedProducts[index].imageUrl),
              ),
              title: Text(recommendedProducts[index].name),
              subtitle: Text(recommendedProducts[index].description),
              onTap: () {
                // Handle tap on a product (if needed)
              },
            ),
          );
        },
      ),
    );
  }
}
