import 'package:flutter/material.dart';

class UserLocation extends StatefulWidget {
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<UserLocation> {
  String? selectedZone;
  String? selectedArea;

  List<String> zones = ['Banasree', 'Zone 2', 'Zone 3'];
  List<String> areas = ['Type 1', 'Type 2', 'Type 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/locationIcon.png', height: 100),
            SizedBox(height: 20),
            Text(
              'Select Your Location',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Switch on your location to stay in tune with what\'s happening in your area',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            DropdownButtonFormField<String>(
              value: selectedZone,
              hint: Text('Your Zone'),
              onChanged: (value) {
                setState(() {
                  selectedZone = value;
                });
              },
              items: zones.map((zone) {
                return DropdownMenuItem(
                  value: zone,
                  child: Text(zone),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            DropdownButtonFormField<String>(
              value: selectedArea,
              hint: Text('Types of your area'),
              onChanged: (value) {
                setState(() {
                  selectedArea = value;
                });
              },
              items: areas.map((area) {
                return DropdownMenuItem(
                  value: area,
                  child: Text(area),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal, // Change this color as needed
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: TextStyle(fontSize: 16),
              ),
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

