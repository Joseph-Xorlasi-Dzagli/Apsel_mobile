import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Image and text
              Container(
                margin: EdgeInsets.only(bottom: 20.0),
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/Apsel Logo.png', width: 100.0),
                    SizedBox(height: 10.0),
                    Text(
                      'Drive sales with Apsel',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              // Contact input field
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your contact information',
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                  ),
                ),
              ),
              // Country flag
              Container(
                margin: EdgeInsets.only(bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/ghanaLogo.png', // Replace with your country flag image path
                      width: 30.0,
                      height: 30.0,
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      'Your Country Code',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
              ),
              // Social media buttons
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          // Handle continue with Google
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.white),
                        ),
                        child: Row(
                          children: <Widget>[
                            Image.asset('assets/google logo.png', width: 20.0),
                            SizedBox(width: 10.0),
                            Text(
                              'Continue with Google',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10.0), // Add space between buttons
                      ElevatedButton(
                        onPressed: () {
                          // Handle continue with Facebook
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.blue),
                        ),
                        child: Row(
                          children: <Widget>[
                            Image.asset('assets/facebook logo.png', width: 20.0),
                            SizedBox(width: 10.0),
                            Text(
                              'Continue with Facebook',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Sign in button
              ElevatedButton(
                onPressed: () {
                  // Handle sign in
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
                child: Text(
                  'Sign In',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
