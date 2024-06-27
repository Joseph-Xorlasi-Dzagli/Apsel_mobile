import 'package:flutter/material.dart';


class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.grey[600]),
          onPressed: () {},
        ),
        title: Text('Messages', style: TextStyle(color: Colors.black, fontSize: 18)),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.grey[600]),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: '🔍 Search any message...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
          // Tabs
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                TabButton(title: 'Notifications', isActive: false, onTap: () {}),
                SizedBox(width: 10),
                TabButton(title: 'Messages (3)', isActive: true, onTap: () {}),
              ],
            ),
          ),
          Divider(),
          // Message list
          Expanded(
            child: ListView(
              children: [
                MessageTile(
                  profileImageUrl: 'https://placehold.co/40x40',
                  name: 'Royal Parvej',
                  message: 'Sounds awesome!',
                  time: '19:37',
                  unreadCount: 1,
                ),
                MessageTile(
                  profileImageUrl: 'https://placehold.co/40x40',
                  name: 'Cameron Williamson',
                  message: 'Ok, just hurry up little bit...😅',
                  time: '19:37',
                  unreadCount: 2,
                ),
                MessageTile(
                  profileImageUrl: 'https://placehold.co/40x40',
                  name: 'Ralph Edwards',
                  message: 'Thanks dude.',
                  time: '19:37',
                ),
                MessageTile(
                  profileImageUrl: 'https://placehold.co/40x40',
                  name: 'Cody Fisher',
                  message: 'How is going...?',
                  time: '19:37',
                ),
                MessageTile(
                  profileImageUrl: 'https://placehold.co/40x40',
                  name: 'Eleanor Pena',
                  message: 'Thanks for the awesome food man...!',
                  time: '19:37',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TabButton extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback onTap;

  const TabButton({
    required this.title,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextStyle(
              color: isActive ? Colors.blue : Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (isActive)
            Container(
              margin: EdgeInsets.only(top: 2),
              height: 2,
              width: 50,
              color: Colors.blue,
            ),
        ],
      ),
    );
  }
}

class MessageTile extends StatelessWidget {
  final String profileImageUrl;
  final String name;
  final String message;
  final String time;
  final int? unreadCount;

  const MessageTile({
    required this.profileImageUrl,
    required this.name,
    required this.message,
    required this.time,
    this.unreadCount,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(profileImageUrl),
        radius: 25,
      ),
      title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(message, style: TextStyle(color: Colors.grey[600])),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(time, style: TextStyle(color: Colors.grey[600])),
          if (unreadCount != null)
            Container(
              margin: EdgeInsets.only(top: 5),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                unreadCount.toString(),
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
        ],
      ),
      onTap: () {},
    );
  }
}
