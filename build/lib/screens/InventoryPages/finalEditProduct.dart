import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class FinalEditProduct extends StatefulWidget {
  @override
  _EditProductScreenState createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<FinalEditProduct> {
  final _formKey = GlobalKey<FormState>();
  String productName = '';
  String price = '';
  String quantity = '';
  bool pickUp = true;
  bool delivery = false;
  String description = '';
  String termsOfService = '';
  String? selectedColor;
  String? selectedSize;
  List<String> colors = ['WHITE', 'BLUE', 'GREY', 'BROWN', 'GREEN', 'YELLOW'];
  List<String> sizes = ['SMALL', 'MEDIUM', 'LARGE', 'EXTRA LARGE'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Product'),
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
                    hintText: 'Best Tech Wireless Headset',
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
                              Text('Add', style: TextStyle(color: Colors.grey)),
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
                  children: [
                    if (selectedColor != null)
                      Chip(
                        label: Text(selectedColor!),
                        backgroundColor: Colors.blue.withOpacity(0.1),
                      ),
                    if (selectedSize != null)
                      Chip(
                        label: Text(selectedSize!),
                        backgroundColor: Colors.blue.withOpacity(0.1),
                      ),
                  ],
                ),
                SizedBox(height: 16),
                TextFormField(
                  maxLines: 3,
                  decoration: InputDecoration(
                    labelText: 'Terms of Service',
                    hintText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ...',
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (value) {
                    termsOfService = value!;
                  },
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          // Add your logic for saving the product here
                        }
                      },
                      child: Text('SAVE'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Set the color of the button to blue
                        minimumSize: Size(150, 50),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        // Add your logic for cancelling the action here
                      },
                      child: Text('CANCEL'),
                      style: OutlinedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        side: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ],
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
        return AlertDialog(
          title: Text('Add Customization Option'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text('Color'),
                onTap: () {
                  Navigator.of(context).pop();
                  _selectColor();
                },
              ),
              ListTile(
                title: Text('Size'),
                onTap: () {
                  Navigator.of(context).pop();
                  _selectSize();
                },
              ),
              ListTile(
                title: Text('Texture'),
                onTap: () {
                  // Add your logic for adding texture here
                },
              ),
              ListTile(
                title: Text('Version'),
                onTap: () {
                  // Add your logic for adding version here
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _selectColor() {
    showDialog(
      context: context,
      builder: (context) {
        String? selectedColor;
        return AlertDialog(
          title: Text('Select Color'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: colors.map((color) {
              return RadioListTile(
                title: Text(color),
                value: color,
                groupValue: selectedColor,
                onChanged: (value) {
                  setState(() {
                    this.selectedColor = value.toString();
                  });
                  Navigator.of(context).pop();
                },
              );
            }).toList(),
          ),
        );
      },
    );
  }

  void _selectSize() {
    showDialog(
      context: context,
      builder: (context) {
        String? selectedSize;
        return AlertDialog(
          title: Text('Select Size'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: sizes.map((size) {
              return RadioListTile(
                title: Text(size),
                value: size,
                groupValue: selectedSize,
                onChanged: (value) {
                  setState(() {
                    this.selectedSize = value.toString();
                  });
                  Navigator.of(context).pop();
                },
              );
            }).toList(),
          ),
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
        child: Center(child: child),
      ),
    );
  }
}
