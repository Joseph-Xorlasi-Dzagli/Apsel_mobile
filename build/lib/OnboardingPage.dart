import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

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
<<<<<<< Updated upstream
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
=======
                  const SizedBox(height: 10),
                  // Your tagline
                  const Text(
                    'Drive sales and manage your store',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 24), // adjust the button position
                  // Get Started button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/editBusinessAddress');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(0xFF, 0x00, 0xAB, 0xC4),
                      minimumSize: const Size(300, 65), // Adjust the width and height here
>>>>>>> Stashed changes
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Adjust the rounding of the corners here
                      ),
                    ),
<<<<<<< Updated upstream
                    child: Text(
=======
                    child: const Text(
>>>>>>> Stashed changes
                      'Get Started',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          )
<<<<<<< Updated upstream
          ,
=======

>>>>>>> Stashed changes
        ],
      ),
    );
  }
}
