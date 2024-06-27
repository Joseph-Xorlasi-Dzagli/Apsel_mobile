import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Color(0xFFB9EEF4), // Light blue color
                    child: Icon(Icons.person, size: 40, color: Colors.grey),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      'G-Connect MobileMobileMobileMobileMobileMobileMobileMobileMobile Accessories',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,

                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              // Light Blue Gradient Container for Business Profile and Business Validation
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color(0xFFB9EEF4).withOpacity(0.7), // Very light blue gradient start
                      const Color(0xFFB9EEF4).withOpacity(0.5), // Very light blue gradient end
                    ],
                  ),
                  borderRadius: BorderRadius.circular(12.0), // Optional: Adds rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFFB9EEF4).withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    _buildListTile(context, Icons.business, 'Business Profile', '/business_profile', Colors.blue),
                    const SizedBox(height: 10),
                    _buildListTile(context, Icons.verified, 'Business Validation', '/business_validation', Colors.green),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Expanded Light Blue Gradient Container for other menu items
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xFFB9EEF4).withOpacity(0.7), // Very light blue gradient start
                        const Color(0xFFB9EEF4).withOpacity(0.5), // Very light blue gradient end
                      ],
                    ),
                    borderRadius: BorderRadius.circular(12.0), // Optional: Adds rounded corners
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFFB9EEF4).withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: ListView(
                    children: [
                      _buildListTile(context, Icons.share, 'Social Media Accounts', '/social_media_accounts', Colors.red),
                      const SizedBox(height: 10),
                      _buildListTile(context, Icons.payment, 'Payment Accounts', '/payment_accounts', Colors.deepPurple),
                      const SizedBox(height: 10),
                      _buildListTile(context, Icons.notifications, 'Notifications & Messages', '/notifications_messages', Colors.orange),
                      const SizedBox(height: 10),
                      _buildListTile(context, Icons.help, 'FAQs', '/faqs', Colors.orange),
                      const SizedBox(height: 10),
                      _buildListTile(context, Icons.settings, 'Settings', '/settings', Colors.blue),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Light Blue Gradient Container for Log Out at the bottom
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color(0xFFB9EEF4).withOpacity(0.7), // Very light blue gradient start
                      const Color(0xFFB9EEF4).withOpacity(0.5), // Very light blue gradient end
                    ],
                  ),
                  borderRadius: BorderRadius.circular(12.0), // Optional: Adds rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFFB9EEF4).withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: _buildListTile(context, Icons.logout, 'Log Out', '/logout', Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListTile(BuildContext context, IconData icon, String title, String routeName, Color iconColor) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        width: 50,
        height: 50,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: Icon(
          icon,
          color: iconColor,
          size: 30,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(fontSize: 16),
      ),
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
    );
  }
}
