import 'package:flutter/material.dart';
import 'package:hiiiiiiii/routes/routes_constants.dart';
import 'package:hiiiiiiii/services/navigation_services.dart';
import 'package:hiiiiiiii/widgets/chattilem1.dart';

class Chatlistm1 extends StatelessWidget {
  const Chatlistm1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> chats = [
      {'image': 'assets/hey1.png', 'name': 'Edein Vindain', 'message': 'huhu.. I meat u, do u wann...', 'time': '7:00'},
      {'image': 'assets/hey2.png', 'name': 'David Cow', 'message': 'Damn.. shut up', 'time': '6:30'},
      {'image': 'assets/hey3.png', 'name': 'Rabbit Mea', 'message': 'The weather is good', 'time': '5:00'},
      {'image': 'assets/hey4.png', 'name': 'Eat meat', 'message': 'What ur name?', 'time': 'Sun'},
      {'image': 'assets/hey5.png', 'name': 'Even Dain', 'message': 'Don\'t play with me anymo...', 'time': 'Sun'},
    ];

    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        final chat = chats[index];
        return Chattilem1(
          profileImage: chat['image']!,
          username: chat['name']!,
          lastMessage: chat['message']!,
          time: chat['time']!,
          onPressed: chat['name'] == 'Edein Vindain' ? () {
            NavigationServices().navigateTo(RoutesConstants.message2);
            // Handle Edein Vindain's message
          } : null,
        );
            
          },
        );
      }
}
    
  

