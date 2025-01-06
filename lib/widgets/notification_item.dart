import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  final String title;
  final String description;
  final String timeAgo;

  const NotificationItem({
    Key? key,
    required this.title,
    required this.description,
    required this.timeAgo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.notifications, color: Colors.purple),
      title: Text(title),
      subtitle: Text(description),
      trailing: Text(
        timeAgo,
        style: const TextStyle(color: Colors.grey, fontSize: 12),
      ),
    );
  }
}
