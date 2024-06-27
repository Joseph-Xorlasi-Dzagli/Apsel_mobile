import 'package:flutter/material.dart';

class PaymentAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Payment Accounts'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.grey[500]),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            // Payment Options
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PaymentOption(imageUrl: 'https://placehold.co/48x48', label: 'Cash'),
                PaymentOption(imageUrl: 'https://placehold.co/48x48', label: 'Visa'),
                PaymentOption(imageUrl: 'https://placehold.co/48x48', label: 'Mastercard'),
                PaymentOption(imageUrl: 'https://placehold.co/48x48', label: 'PayPal'),
              ],
            ),
            SizedBox(height: 40),
            // No MasterCard Added
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Image.network('https://placehold.co/80x80'),
                  SizedBox(height: 16),
                  Text(
                    'No master card added',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'You can add a mastercard and save it for later',
                    style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[500],
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.add, size: 24),
                        SizedBox(width: 8),
                        Text('ADD NEW', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            // Total
            Text(
              'TOTAL:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'GHS 0.00',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.grey[900]),
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentOption extends StatelessWidget {
  final String imageUrl;
  final String label;

  const PaymentOption({
    required this.imageUrl,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              shape: BoxShape.circle,
            ),
            child: Image.network(imageUrl),
          ),
          SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(fontSize: 14, color: Colors.grey[500]),
          ),
        ],
      ),
    );
  }
}
