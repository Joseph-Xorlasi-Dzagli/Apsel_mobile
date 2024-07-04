import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';


class EditProductConti1 extends StatefulWidget {
  @override
  _EditProductScreenState createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<EditProductConti1> {
  final _formKey = GlobalKey<FormState>();
  String productName = '';
  String price = '';
  String quantity = '';
  bool pickUp = true;
  bool delivery = false;
  String description = '';
  List<String> customizationOptions = [];

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
                    hintText: 'Beats Studio Wireless Headset',
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
                      child: DottedBorderContainer(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.add_a_photo, size: 40, color: Colors.grey),
                              Text('Add', style: TextStyle(color: Colors.grey))
                            ],
                          ),
                        ),
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
                        _addCustomizationOption();
                      },
                      child: Text('+ADD'),
                    ),
                  ],
                ),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 4.0,
                  children: customizationOptions.map((option) {
                    return Chip(
                      label: Text(option),
                      backgroundColor: Colors.blue.withOpacity(0.1),
                    );
                  }).toList(),
                ),
                SizedBox(height: 16),
                TextButton(
                  onPressed: () {
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
                      backgroundColor: Colors.blue,
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

  void _addCustomizationOption() {
    showDialog(
      context: context,
      builder: (context) {
        String newOption = '';
        return AlertDialog(
          title: Text('Add Customization Option'),
          content: TextFormField(
            decoration: InputDecoration(
              hintText: 'type feature option',
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {
              newOption = value;
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  customizationOptions.add(newOption);
                });
                Navigator.of(context).pop();
              },
              child: Text('ADD'),
            ),
          ],
        );
      },
    );
  }
}

class DottedBorderContainer extends StatelessWidget {
  final Widget child;

  DottedBorderContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(8),
      ),
      child: DottedBorder(
        color: Colors.grey,
        strokeWidth: 2,
        dashPattern: [8, 4],
        borderType: BorderType.RRect,
        radius: Radius.circular(8),
        child: child,
      ),
    );
  }
}
