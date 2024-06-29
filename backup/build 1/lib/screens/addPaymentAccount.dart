import 'package:flutter/material.dart';


class AddPaymentAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Payment Account'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Add your back button action here
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'CARD HOLDER NAME',
                prefixIcon: Icon(Icons.location_pin),
                border: OutlineInputBorder(),
              ),
              readOnly: true,
              initialValue: '3235 Royal Ln. Mesa, New Jersey 34567',
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'CARD NUMBER',
                border: OutlineInputBorder(),
              ),
              initialValue: '1234 **** **** ****',
            ),
            SizedBox(height: 20),

            Row(
              children: [Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'EXPIRY DATE',
                    border: OutlineInputBorder(),
                  ),
                  initialValue: 'mm/yyyy',
                ),
              ),
                SizedBox(width: 20),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'CVC',
                      border: OutlineInputBorder(),
                    ),
                    initialValue: '***',
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            SizedBox(width: 20),
            ElevatedButton(
              onPressed: () {
                // Add your save location action here
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.teal,
              ),
              child: Text('SAVE LOCATION'),
            ),
          ],
        ),
      ),
    );
  }
}
