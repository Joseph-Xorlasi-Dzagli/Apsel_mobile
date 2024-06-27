import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey[300]!),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              // Header
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey[200]!),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(
                              'https://placehold.co/40x40'),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Alfredina Akpene',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Online',
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.videocam, color: Colors.grey[500]),
                        SizedBox(width: 10),
                        Icon(Icons.phone, color: Colors.grey[500]),
                        SizedBox(width: 10),
                        Icon(Icons.more_vert, color: Colors.grey[500]),
                      ],
                    ),
                  ],
                ),
              ),

              // Messages
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ListView(
                    children: [
                      Center(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text('Today', style: TextStyle(fontSize: 14)),
                        ),
                      ),
                      SizedBox(height: 16),
                      _buildMessage(
                        sender: 'Mike Mazowski',
                        message:
                        'Hello guys, we have discussed about post-corona vacation plan and our decision is to go to Bali. We will have a very big party after this corona ends! These are some images about our destination',
                        time: '16.04',
                        isSender: false,
                        images: [
                          'https://placehold.co/150x100',
                          'https://placehold.co/150x100',
                          'https://placehold.co/150x100',
                        ],
                      ),
                      SizedBox(height: 16),
                      _buildMessage(
                        sender: '',
                        message:
                        "That's very nice place! You guys made a very good decision. Can't wait to go on vacation!",
                        time: '16.04',
                        isSender: true,
                        profileImage:
                        'https://placehold.co/40x40',
                      ),
                    ],
                  ),
                ),
              ),

              // Input
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey[200]!),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Type a message...',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.insert_emoticon, color: Colors.grey[500]),
                    SizedBox(width: 10),
                    Icon(Icons.attach_file, color: Colors.grey[500]),
                    SizedBox(width: 10),
                    Icon(Icons.mic, color: Colors.grey[500]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMessage({
    required String sender,
    required String message,
    required String time,
    required bool isSender,
    String? profileImage,
    List<String>? images,
  }) {
    return Column(
      crossAxisAlignment:
      isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        if (!isSender) Text(sender, style: TextStyle(color: Colors.grey[500], fontSize: 14)),
        SizedBox(height: 5),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (!isSender && profileImage != null)
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(profileImage),
              ),
            if (!isSender) SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment:
                isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: isSender ? Colors.blue[600] : Colors.grey[200],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: isSender
                            ? Radius.circular(10)
                            : Radius.circular(0),
                        bottomRight: isSender
                            ? Radius.circular(0)
                            : Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          message,
                          style: TextStyle(
                            color: isSender ? Colors.white : Colors.black,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 5),
                        if (images != null)
                          GridView.count(
                            crossAxisCount: 2,
                            shrinkWrap: true,
                            crossAxisSpacing: 4.0,
                            mainAxisSpacing: 4.0,
                            physics: NeverScrollableScrollPhysics(),
                            children: images.map((image) {
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  image,
                                  fit: BoxFit.cover,
                                ),
                              );
                            }).toList(),
                          ),
                        SizedBox(height: 5),
                        Text(
                          time,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: isSender
                                ? Colors.white70
                                : Colors.grey[600],
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
      ],
    );
  }
}


