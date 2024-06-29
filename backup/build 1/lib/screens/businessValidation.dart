import 'package:flutter/material.dart';

class BusinessValidation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.grey[700]),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Business Validation',
          style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 16),
            // Icons row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildIconColumn(
                  iconUrl: 'https://placehold.co/40x40',
                  label: 'ID Cards',
                  isSelected: false,
                ),
                _buildIconColumn(
                  iconUrl: 'https://placehold.co/40x40',
                  label: 'Licenses & Permits',
                  isSelected: false,
                ),
                _buildIconColumn(
                  iconUrl: 'https://placehold.co/40x40',
                  label: 'Business Certificate',
                  isSelected: true,
                ),
              ],
            ),
            SizedBox(height: 32),
            // Certificate Info
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Image.network(
                    'https://placehold.co/80x80',
                    width: 64,
                    height: 64,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'No Business Certificates added',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'You can add a business certificate to validate your business.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Handle add new certificate
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal[500],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                    ),
                    child: Text(
                      '+ ADD NEW',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconColumn({required String iconUrl, required String label, required bool isSelected}) {
    return Expanded(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: isSelected ? Colors.blue[100] : Colors.grey[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.network(
                  iconUrl,
                  width: 40,
                  height: 40,
                ),
              ),
              if (isSelected)
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      color: Colors.blue[500],
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.check, color: Colors.white, size: 16),
                  ),
                ),
            ],
          ),
          SizedBox(height: 4),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
