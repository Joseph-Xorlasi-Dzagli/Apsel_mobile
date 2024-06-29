import 'package:flutter/material.dart';



class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Notifications',
          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.grey[500]),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              // Search Bar
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[300]!),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search any notification...',
                    hintStyle: TextStyle(color: Colors.grey[400]),
                    prefixIcon: Icon(Icons.search, color: Colors.grey[500]),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Tabs
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue[600],
                        padding: EdgeInsets.symmetric(vertical: 12),
                        textStyle: TextStyle(fontWeight: FontWeight.bold),
                        side: BorderSide(color: Colors.blue[600]!, width: 2),
                      ),
                      child: Text('Notifications'),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.grey[500],
                        padding: EdgeInsets.symmetric(vertical: 12),
                        textStyle: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      child: Text('Messages (3)'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Notifications List
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NotificationItem(
                    profileImage: 'https://placehold.co/40',
                    userName: 'Tanbir Ahmed',
                    actionText: 'Placed a new order',
                    timeAgo: '20 min ago',
                  ),
                  NotificationItem(
                    profileImage: 'https://placehold.co/40',
                    userName: 'Sahim Smith',
                    actionText: 'left a 5 star review',
                    timeAgo: '20 min ago',
                  ),
                  NotificationItem(
                    profileImage: 'https://placehold.co/40',
                    userName: 'Royal Bengol',
                    actionText: 'agreed to cancel',
                    timeAgo: '20 min ago',
                  ),
                  NotificationItem(
                    profileImage: 'https://placehold.co/40',
                    userName: 'Pabel Vuiya',
                    actionText: 'Placed a new order',
                    timeAgo: '20 min ago',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  final String profileImage;
  final String userName;
  final String actionText;
  final String timeAgo;

  const NotificationItem({
    required this.profileImage,
    required this.userName,
    required this.actionText,
    required this.timeAgo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey[200]!)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(profileImage),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: userName,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' $actionText'),
                    ],
                  ),
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 4),
                Text(
                  timeAgo,
                  style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
