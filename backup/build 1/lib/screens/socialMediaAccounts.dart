import 'package:flutter/material.dart';

class SocialMediaAccountsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildSocialMediaIcon(
                  imageUrl:
                  'https://placehold.co/40x40/25D366/FFFFFF/png?text=W',
                  label: 'WhatsApp',
                ),
                _buildSocialMediaIcon(
                  imageUrl:
                  'https://placehold.co/40x40/E1306C/FFFFFF/png?text=I',
                  label: 'Instagram',
                ),
                _buildSocialMediaIcon(
                  imageUrl:
                  'https://placehold.co/40x40/FFFC00/FFFFFF/png?text=S',
                  label: 'Snapchat',
                  hasCheckMark: true,
                ),
                _buildSocialMediaIcon(
                  imageUrl:
                  'https://placehold.co/40x40/000000/FFFFFF/png?text=T',
                  label: 'TikTok',
                ),
              ],
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  _buildLargeSocialMediaIcon(
                    imageUrl:
                    'https://placehold.co/40x40/FFFC00/FFFFFF/png?text=S',
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
                    'You can add a Snapchat account to use our service ☹️.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Add new account action
                    },
                    icon: Icon(Icons.add),
                    label: Text('ADD NEW'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyan[500],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                  ),
                ],
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


