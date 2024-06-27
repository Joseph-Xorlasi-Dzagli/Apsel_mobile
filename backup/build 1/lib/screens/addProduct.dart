import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProduct> {
  final _productNameController = TextEditingController();
  final _priceController = TextEditingController(text: 'GHS 50.00');
  final _quantityController = TextEditingController(text: '100');
  final _descriptionController = TextEditingController(
      text: 'Lorem ipsum dolor sit amet, consectetur adipi cing elit. Bibendum in vel, mattis et amet dui mauris turpis.');
  final _customizationOptionController = TextEditingController(text: 'COLOR');
  final _featureController = TextEditingController();

  bool _isPickUp = false;
  bool _isDelivery = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Add Product'),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('PRODUCT NAME', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            TextField(
              controller: _productNameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Beats Studio Wireless Headset',
              ),
            ),
            SizedBox(height: 16),
            Text('UPLOAD PHOTO/VIDEO', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Row(
              children: [
                _buildUploadButton(),
                SizedBox(width: 8),
                _buildImagePlaceholder(),
                SizedBox(width: 8),
                _buildImagePlaceholder(),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: _buildTextField(
                      controller: _priceController, label: 'PRICE'),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: _buildTextField(
                      controller: _quantityController, label: 'QUANTITY'),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text('DELIVERY OPTION', style: TextStyle(fontWeight: FontWeight.bold)),
            Row(
              children: [
                Checkbox(
                  value: _isPickUp,
                  onChanged: (value) {
                    setState(() {
                      _isPickUp = value!;
                    });
                  },
                ),
                Text('Pick up'),
                Checkbox(
                  value: _isDelivery,
                  onChanged: (value) {
                    setState(() {
                      _isDelivery = value!;
                    });
                  },
                ),
                Text('Delivery'),
              ],
            ),
            SizedBox(height: 16),
            Text('DESCRIPTION', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            TextField(
              controller: _descriptionController,
              maxLines: 4,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            Text('CUSTOMIZATION OPTIONS', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {},
                ),
                Expanded(
                  child: TextField(
                    controller: _customizationOptionController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'type feature option',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            TextField(
              controller: _featureController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'type any feature',
              ),
            ),
            SizedBox(height: 8),
            TextButton(
              onPressed: () {},
              child: Text('+ADD', style: TextStyle(color: Colors.blue)),
            ),
            SizedBox(height: 8),
            TextButton(
              onPressed: () {},
              child: Text('DELETE', style: TextStyle(color: Colors.red)),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle form submission
              },
              child: Text('SAVE'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                minimumSize: Size(double.infinity, 48),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUploadButton() {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(Icons.add, color: Colors.grey[400]),
    );
  }

  Widget _buildImagePlaceholder() {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  Widget _buildTextField({required TextEditingController controller, required String label}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
