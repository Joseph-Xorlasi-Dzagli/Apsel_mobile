import 'package:flutter/material.dart';

class InventoryCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inventory'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {
              // Handle more options
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Navigation Tabs
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      // Navigate to Products Page
                    },
                    child: Text(
                      'Products',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      // Already on Categories Page
                    },
                    child: Text(
                      'Categories',
                      style: TextStyle(
                        color: Colors.cyan,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            // Search Bar
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                hintText: 'Search any Order...',
                prefixIcon: Icon(Icons.search),
              ),
            ),
            SizedBox(height: 16),
            // Filters
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('52 Categories', style: TextStyle(color: Colors.grey)),
                Row(
                  children: [
                    TextButton.icon(
                      onPressed: () {
                        // Handle Sort
                      },
                      icon: Icon(Icons.sort, color: Colors.grey),
                      label: Text('Sort', style: TextStyle(color: Colors.grey)),
                    ),
                    TextButton.icon(
                      onPressed: () {
                        // Handle Filter
                      },
                      icon: Icon(Icons.filter_list, color: Colors.grey),
                      label: Text('Filter', style: TextStyle(color: Colors.grey)),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            // Categories Grid
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 3 / 4,
                ),
                itemCount: 6, // Replace with your item count
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return GestureDetector(
                      onTap: () {
                        // Handle Add Category
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey.shade300,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.grey.shade100,
                        ),
                        child: Center(
                          child: Text(
                            'Add Category',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    );
                  } else {
                    return CategoryCard(
                      title: index == 1
                          ? 'Cooking Oil & Ghee'
                          : index == 2
                          ? 'Plantains & Starchy roots'
                          : index == 3
                          ? 'Meats & Fish'
                          : 'Bakery and Snacks',
                      icon: index == 4
                          ? null
                          : Icon(Icons.local_offer, color: Colors.cyan[900]),
                      imageUrl: index == 4
                          ? 'https://placehold.co/300x200'
                          : null,
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final Icon? icon;
  final String? imageUrl;

  CategoryCard({required this.title, this.icon, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue.shade200,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.blue.shade50,
      ),
      child: imageUrl == null
          ? Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon ?? Container(),
            SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.cyan[900]),
            ),
          ],
        ),
      )
          : Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              imageUrl!,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.75),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Center(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.cyan[900]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
