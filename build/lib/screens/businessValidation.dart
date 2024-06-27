import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BusinessValidation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
            SizedBox(height: 10),
            // Icons row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/Card.png',
                      width: 100,
                    ),
                    SizedBox(height: 5), // Adjust spacing between image and label
                    Text('ID Card \n'),
                  ],
                ),
                SizedBox(width: 25),

                Column(
                  children: [
                    Image.asset(
                      'assets/permit.png',
                      width: 100,
                    ),
                    SizedBox(height: 5),
                    Text('Licenses & \n Permits'),
                  ],
                ),
                SizedBox(width: 25),

                Column(
                  children: [
                  Image.asset(
                  'assets/cert.png',
                  width: 100,
                  ),
                    SizedBox(height: 5),
                    Text('Business \n Certificate'),
                  ],
                ),
              ],
            ),
          SizedBox(height: 25),
            // Certificate Info

            Container(
              padding: const EdgeInsets.all(30),
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
                  Image.asset(
                    'assets/certificate.png',
                    width: 180,
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
                    'You can add a business certificate \n to validate your business.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
            SizedBox(height: 10),


              ElevatedButton(
                onPressed: () {
                  // Handle form submission
                },
                child: Text('+ ADD NEW'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: Size(320, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: Colors.grey, width: 1)
                  ),
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
