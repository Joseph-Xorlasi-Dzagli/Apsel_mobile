import 'package:flutter/material.dart';


class EditBusinessAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Business Address'),
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
            Container(
              height: 200,
              color: Colors.grey[300],
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    // Add your map edit location action here
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.red,
                        size: 50,
                      ),
                      Text(
                        'Move to edit location',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'ADDRESS',
                prefixIcon: Icon(Icons.location_pin),
                border: OutlineInputBorder(),
              ),
              readOnly: true,
              initialValue: '3235 Royal Ln. Mesa, New Jersey 34567',
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'STREET',
                border: OutlineInputBorder(),
              ),
              initialValue: 'Hason Nagar',
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'POST CODE',
                      border: OutlineInputBorder(),
                    ),
                    initialValue: '34567',
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'BLOCK',
                      border: OutlineInputBorder(),
                    ),
                    initialValue: '345',
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
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
