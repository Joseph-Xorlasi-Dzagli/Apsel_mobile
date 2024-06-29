import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 200,
                color: Colors.grey[300],
                child: Center(child: Text('Image Placeholder')),
              ),
              SizedBox(height: 16),
              Text(
                'Studio beats Headset',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text('\$60', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text('100pcs'),
              SizedBox(height: 8),
              Row(
                children: [
                  Text('Delivery & Pickup'),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      // Handle edit product
                    },
                    child: Text('EDIT', style: TextStyle(color: Colors.red)),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text('Description'),
              SizedBox(height: 8),
              Text(
                'Lorem ipsum dolor sit amet, consectetur Maton adipiscing elit. Bibendum in vel, mattis et amet dui mauris turpis.',
              ),
              SizedBox(height: 16),
              Text('Customization'),
              Wrap(
                spacing: 8.0,
                children: [
                  Chip(label: Text('COLOR: WHITE')),
                  Chip(label: Text('COLOR: BLUE')),
                  Chip(label: Text('COLOR: GREY')),
                  Chip(label: Text('COLOR: BROWN')),
                  Chip(label: Text('COLOR: GREEN')),
                  Chip(label: Text('COLOR: YELLOW')),
                  Chip(label: Text('SIZE: SMALL')),
                  Chip(label: Text('SIZE: MEDIUM')),
                ],
              ),
              SizedBox(height: 16),
              Text('Terms of Service'),
              SizedBox(height: 8),
              Text(
                'Lorem ipsum dolor sit amet, consectetur Maton adipiscing elit. Bibendum in vel, mattis et amet dui mauris turpis.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
