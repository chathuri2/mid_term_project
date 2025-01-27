import 'package:flutter/material.dart';

class BookWidget extends StatelessWidget {
  final String title;
  final String author;
  final String price;
  final String imageUrl;

  const BookWidget({
    super.key,
    required this.title,
    required this.author,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Book Title
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            // Book Author
            Text(
              author,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 10),
            // Book Cover Image
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                imageUrl,
                height: 150,
                width: 100,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 150,
                    color: Colors.grey[200],
                    child: const Icon(
                      Icons.broken_image,
                      color: Colors.grey,
                      size: 50,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10, width: 4),
            // Price and Add to Cart Button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '\ ${price}',
                  style: const TextStyle(fontSize: 16, color: Colors.green),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    // Add your 'Add to Cart' functionality here
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Added to cart!")),
                    );
                  },
                  child: const Text("Add to Cart"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple[100],
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
