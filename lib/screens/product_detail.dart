import 'package:flutter/material.dart';
import 'package:sugar_petals/models/product_entry.dart';
import 'package:sugar_petals/widgets/left_drawer.dart';

class DetailProductPage extends StatelessWidget {
  final ProductEntry productEntry;
  const DetailProductPage({
    super.key,
    required this.productEntry
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detail Product'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        drawer: const LeftDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'Detail Product',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),
                Text(
                  productEntry.fields.name,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const Text('Description'),
                Text(productEntry.fields.description),
                const SizedBox(height: 16),
                Text('Price: ${productEntry.fields.price.toString()}'),
                Text('Sweet Level: ${productEntry.fields.sweetLevel.toString()}'),
                const SizedBox(height: 20),
                ElevatedButton(
                onPressed: () {
                    Navigator.pop(context);
                },
                child: const Text("Kembali"),
                ),
            ],
          ),
        ));
  }
}