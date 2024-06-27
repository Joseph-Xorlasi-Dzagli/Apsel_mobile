import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MobileNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/backgrdImage.png',
              fit: BoxFit.cover,
            ),
          ),
          // Content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 50),
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    // Handle back button press
                  },
                ),
                SizedBox(height: 50),
                Text(
                  'Enter your mobile number',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/flagIcon.png',
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(width: 8),
                    Text(
                      '+233',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Mobile Number',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerRight,
                  child: FloatingActionButton(
                    onPressed: () {
                      // Handle next button press
                    },
                    child: Icon(Icons.arrow_forward),
                  ),
                ),
                SizedBox(height: 50),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: CustomKeypad(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomKeypad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 12,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (context, index) {
        String text;
        if (index < 9) {
          text = (index + 1).toString();
        } else if (index == 9) {
          text = '*';
        } else if (index == 10) {
          text = '0';
        } else {
          text = '#';
        }
        return InkWell(
          onTap: () {
            // Handle keypad button press
            print('Key pressed: $text');
          },
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
            ),
          ),
        );
      },
    );
  }
}