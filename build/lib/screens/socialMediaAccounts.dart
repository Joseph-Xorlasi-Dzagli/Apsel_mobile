import 'package:flutter/material.dart';

class SocialMediaAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.grey[700]),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Social Media Accounts',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_horiz, color: Colors.black),
            onPressed: () {},
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Container(
            color: Colors.grey[300],
            height: 1.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/whatsapp.png',
                      width: 74,
                    ),
                    SizedBox(height: 5), // Adjust spacing between image and label
                    Text('WhatsApp'),
                  ],
                ),
                SizedBox(width: 20),

                Column(
                  children: [
                    Image.asset(
                      'assets/insta.png',
                      width: 74,
                    ),
                    SizedBox(height: 5), // Adjust spacing between image and label
                    Text('Instagram'),
                  ],
                ),
                SizedBox(width: 20),

                Column(
                  children: [
                    Image.asset(
                      'assets/snap.png',
                      width: 74,
                    ),
                    SizedBox(height: 5), // Adjust spacing between image and label
                    Text('Snapchat'),
                  ],
                ),
                SizedBox(width: 20),


                Column(
                  children: [
                    Image.asset(
                      'assets/tiktok.png',
                      width: 74,
                    ),
                    SizedBox(height: 5), // Adjust spacing between image and label
                    Text('Tik Tok'),
                  ],
                ),
                SizedBox(width: 20),
              ],
            ),
            SizedBox(height: 16),


            Container(
              padding: EdgeInsets.all(35.0),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/snap.png',
                    width: 120,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'No Snapchat Accounts added',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'You can add a Snapchat account \n to use our service ai.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
            SizedBox(height: 10),

            ElevatedButton.icon(
              onPressed: () {
                // Add new account action
              },
              icon: Icon(Icons.add),
              label: Text('ADD NEW'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, //cyan[500],
                minimumSize: Size(310,50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(color: Colors.grey, width: 1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }












  Widget _buildSocialMediaIcon({
    required String imageUrl,
    required String label,
    bool hasCheckMark = false,
  }) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(imageUrl),
            ),
            if (hasCheckMark)
              Positioned(
                right: 0,
                child: Icon(
                  Icons.check_circle,
                  color: Colors.cyan[500],
                  size: 16,
                ),
              ),
          ],
        ),
        SizedBox(height: 4),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _buildLargeSocialMediaIcon({required String imageUrl}) {
    return CircleAvatar(
      radius: 35,
      backgroundImage: NetworkImage(imageUrl),
    );
  }
}


