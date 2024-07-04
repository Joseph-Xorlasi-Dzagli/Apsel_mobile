import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class BrowsePages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Browse Pages'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                ),
                child: Image.asset(
                  'assets/images/marktImage.png',
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Drive sales with Apsel',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/flagIcon.png',
                    width: 24,
                    height: 24,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(width: 8),
                  Text(
                    '+233',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Divider(),
              SizedBox(height: 10),
              Text(
                'Or connect with social media',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              SocialMediaButton(
                iconPath: 'assets/images/googleIcon.png',
                text: 'Continue with Google',
                backgroundColor: Colors.blue.shade700,
              ),
              SizedBox(height: 10),
              SocialMediaButton(
                iconPath: 'assets/images/facebookIcon.png',
                text: 'Continue with Facebook',
                backgroundColor: Colors.blue.shade900,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SocialMediaButton extends StatelessWidget {
  final String iconPath;
  final String text;
  final Color backgroundColor;

  SocialMediaButton({
    required this.iconPath,
    required this.text,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Image.asset(
        iconPath,
        width: 24,
        height: 24,
        fit: BoxFit.contain,
      ),
      label: Flexible(
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, backgroundColor: backgroundColor,
        padding: EdgeInsets.symmetric(vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: () {
        // Define the button's onPressed functionality here
        print('$text button pressed!');
      },
    );
  }
}
