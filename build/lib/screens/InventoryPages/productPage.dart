import 'package:flutter/material.dart';


class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inventory'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SearchBar(),
            SizedBox(height: 10),
            Expanded(
              child: ProductGrid(),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search any Product...',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        SizedBox(width: 10),
        IconButton(
          icon: Icon(Icons.sort),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.filter_list),
          onPressed: () {},
        ),
      ],
    );
  }
}

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 3 / 4,
      ),
      itemBuilder: (context, index) {
        return ProductCard(
          productName: 'Bell Pepper Red',
          productQuantity: '100pcs',
          productPrice: 'Ghc 40.99',
        );
      },
    );
  }
}

class ProductCard extends StatelessWidget {
  final String productName;
  final String productQuantity;
  final String productPrice;

  const ProductCard({
    required this.productName,
    required this.productQuantity,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://via.placeholder.com/150',
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Text(
              productName,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(productQuantity),
            Text(productPrice),
          ],
        ),
      ),
    );
  }
}
