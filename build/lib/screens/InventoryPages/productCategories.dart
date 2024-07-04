import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'category_provider.dart';


class CategoryProvider with ChangeNotifier {
  List<String> _categories = [
    'Cooking Oil & Ghee',
    'Plantains & Starchy roots',
    'Meats & Fish',
    'Bakery and Snacks',
    'Meats & Fish', // Duplicate as per the image
  ];

  List<String> get categories => _categories;

  void addCategory(String category) {
    _categories.add(category);
    notifyListeners();
  }

  void removeCategory(String category) {
    _categories.remove(category);
    notifyListeners();
  }
}


class InventoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var categories = context.watch<CategoryProvider>().categories;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Inventory'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Products'),
              Tab(text: 'Categories'),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search any Order...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('${categories.length} Categories'),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.sort),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.filter_list),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),
                  itemCount: categories.length + 1,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return AddCategoryCard();
                    } else {
                      return CategoryCard(categoryName: categories[index - 1]);
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AddCategoryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: InkWell(
        onTap: () {
          _showAddCategoryDialog(context);
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add, size: 40),
              Text('Add Category'),
            ],
          ),
        ),
      ),
    );
  }

  void _showAddCategoryDialog(BuildContext context) {
    TextEditingController categoryController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Add Category'),
          content: TextField(
            controller: categoryController,
            decoration: InputDecoration(hintText: 'Category Name'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                if (categoryController.text.isNotEmpty) {
                  context.read<CategoryProvider>().addCategory(categoryController.text);
                }
                Navigator.of(context).pop();
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String categoryName;

  CategoryCard({required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(
        child: Text(categoryName),
      ),
    );
  }
}
