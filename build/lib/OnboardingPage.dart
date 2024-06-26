import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/onboard.png',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 120.0), // adjust the bottom margin as needed
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    // Your logo
                    child: Image.asset(
                      'assets/Apsel Logo.png', // adjust the path to your logo
                      width: 200, // adjust the size as needed
                    ),
                  ),
                  SizedBox(height: 10),
                  // Your tagline
                  Text(
                    'Drive sales and manage your store',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 24), // adjust the button position
                  // Get Started button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/signIn');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(0xFF, 0x00, 0xAB, 0xC4),
                      minimumSize: Size(300, 65), // Adjust the width and height here
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Adjust the rounding of the corners here
                      ),
                    ),
                    child: Text(
                      'Get Started',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          )
          ,
        ],
      ),
    );
  }
}
