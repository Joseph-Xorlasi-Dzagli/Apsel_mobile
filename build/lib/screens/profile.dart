import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Business Profile',
          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.blue[100],
                      child: Icon(Icons.person, size: 60, color: Colors.blue[500]),
                    ),
                    SizedBox(height: 10),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'EDIT',
                        style: TextStyle(color: Colors.orange[500], fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'G-Connect Mobile Accessories',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'This Food so tasty & delicious. Breakfast so fast Delivered in my place. Chef is very friendly. I\'m really like chef for Home Food Order. Thanks.',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    SizedBox(height: 10),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'More',
                        style: TextStyle(color: Colors.blue[500], fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 20),
                    Divider(color: Colors.grey),
                    SizedBox(height: 20),
                    ProfileItem(icon: Icons.business, label: 'BUSINESS', value: 'G-Connect Mobile Accessories'),
                    SizedBox(height: 10),
                    ProfileItem(icon: Icons.person, label: 'MANAGER', value: 'Joseph Akurugu Avoka'),
                    SizedBox(height: 10),
                    ProfileItem(icon: Icons.email, label: 'EMAIL', value: 'hello@halallab.co'),
                    SizedBox(height: 10),
                    ProfileItem(icon: Icons.phone, label: 'PHONE NUMBER', value: '408-841-0926'),
                    SizedBox(height: 10),
                    ProfileItem(
                      icon: Icons.location_on,
                      label: 'ADDRESS',
                      value: '3391 Ranchview Dr. Richardson, California 62639',
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const ProfileItem({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 50,
          child: Icon(icon, color: Colors.purple[600], size: 28),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(color: Colors.grey[400], fontSize: 14),
              ),
              Text(
                value,
                style: TextStyle(color: Colors.grey[800], fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
