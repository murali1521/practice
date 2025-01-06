import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade100,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.purple.shade100,
        title: TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 12),
            filled: true,
            fillColor: Colors.purple.shade200,
            prefixIcon: const Icon(Icons.search, color: Colors.white),
            hintText: 'Notification',
            hintStyle: TextStyle(color: Colors.white70),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'New',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          ..._buildNotificationItems([
            {
              'name': 'Edein Vindain',
              'action': 'reacted to your comment:',
              'time': 'Just now',
              'profileImage': 'assets/Ellipse 228.png',
              'details': 'Stupid boy, I don’t...',
            },
            {
              'name': 'Dai men',
              'action': 'replied to Edein Vin’s comment on your photo.',
              'time': '20 minutes ago',
              'profileImage': 'assets/Ellipse 228 (1).png',
            },
            {
              'name': 'Than trung',
              'action': 'replied her comment on your photo.',
              'time': '57 minutes ago',
              'profileImage': 'assets/Ellipse 228 (2).png',
            },
          ]),
          const SizedBox(height: 16),
          const Text(
            'Earlier',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          ..._buildNotificationItems([
            {
              'name': 'Thandein Vinn',
              'action': 'Liked a comment you are mentioned',
              'time': 'Yesterday at 10:02 PM',
              'profileImage': 'assets/Ellipse 228 (3).png',
            },
            {
              'name': 'Edein Vindain',
              'action': 'reacted to your comment:',
              'time': 'Yesterday at 8:30 PM',
              'profileImage': 'assets/Ellipse 221 (4).png',
              'details': 'Stupid boy, I don’t...',
            },
            {
              'name': 'Dai men',
              'action': 'replied to Edein Vin’s comment on your photo.',
              'time': 'Yesterday at 8:29 PM',
              'profileImage': 'assets/Ellipse 221 (5).png',
            },
            {
              'name': 'Than trung',
              'action': 'replied her comment on your photo.',
              'time': 'Yesterday at 8:20 PM',
              'profileImage': 'assets/Ellipse 228 (6).png',
            },
          ]),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple.shade400,
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple.shade200,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.lightBlueAccent,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          BottomNavigationBarItem(icon: SizedBox.shrink(), label: ''), // Spacer for FAB
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
        ],
      ),
    );
  }

  List<Widget> _buildNotificationItems(List<Map<String, String>> notifications) {
    return notifications.map((notification) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(notification['profileImage']!),
              radius: 24,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    notification['name']!,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    notification['action']!,
                    style: const TextStyle(fontSize: 12, color: Colors.white70),
                  ),
                  if (notification['details'] != null)
                    Text(
                      notification['details']!,
                      style: const TextStyle(fontSize: 12, color: Colors.white70),
                      overflow: TextOverflow.ellipsis,
                    ),
                  Text(
                    notification['time']!,
                    style: const TextStyle(fontSize: 10, color: Colors.white54),
                  ),
                ],
              ),
            ),
            const Icon(Icons.more_horiz, color: Colors.white54),
          ],
        ),
      );
    }).toList();
  }
}
