import 'package:flutter/material.dart';


class AddProduct extends StatefulWidget {
  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProduct> {
  final _formKey = GlobalKey<FormState>();
  String productName = '';
  String price = '';
  String quantity = '';
  bool pickUp = true;
  bool delivery = false;
  String description = '';
  String customizationOption = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Product Name',
                    hintText: 'BestTech Wireless Headset',
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (value) {
                    productName = value!;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the product name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),
                Text('Upload Photo/Video'),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 80,
                        color: Colors.grey[200],
                        child: Center(child: Icon(Icons.add)),
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Container(
                        height: 80,
                        color: Colors.grey[300],
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Container(
                        height: 80,
                        color: Colors.grey[300],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Price',
                          hintText: '50.00',
                          prefixText: 'GHS ',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                        onSaved: (value) {
                          price = value!;
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the price';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Quantity',
                          hintText: '100',
                          suffixText: 'PCS',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                        onSaved: (value) {
                          quantity = value!;
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the quantity';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Checkbox(
                      value: pickUp,
                      onChanged: (bool? value) {
                        setState(() {
                          pickUp = value!;
                        });
                      },
                    ),
                    Text('Pick up'),
                    Checkbox(
                      value: delivery,
                      onChanged: (bool? value) {
                        setState(() {
                          delivery = value!;
                        });
                      },
                    ),
                    Text('Delivery'),
                  ],
                ),
                TextFormField(
                  maxLines: 3,
                  decoration: InputDecoration(
                    labelText: 'Description',
                    hintText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ...',
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (value) {
                    description = value!;
                  },
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Customization Options'),
                    TextButton(
                      onPressed: () {
                        // Add your logic for adding customization options here
                      },
                      child: Text('+ADD'),
                    ),
                  ],
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'type feature option',
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (value) {
                    customizationOption = value!;
                  },
                ),
                SizedBox(height: 16),
                TextButton(
                  onPressed: () {
                    // Add your logic for deleting the product here
                  },
                  child: Text('DELETE', style: TextStyle(color: Colors.red)),
                ),
                SizedBox(height: 16),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();

                      }
                    },
                    child: Text('SAVE'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
