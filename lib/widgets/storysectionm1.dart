import 'package:flutter/material.dart';
import 'package:hiiiiiiii/widgets/storycirclem1.dart';

class Storysectionm1 extends StatelessWidget {
  const Storysectionm1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> stories = [
      {'image': 'assets/Hii1.png', 'name': 'You'},
      {'image': 'assets/hii2.png', 'name': 'Edein'},
      {'image': 'assets/hii3.png', 'name': 'Sumei'},
      {'image': 'assets/hii4.png', 'name': 'Dicak'},
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: stories
            .map((story) => Storycirclem1(
                  imagePath: story['image']!,
                  username: story['name']!,
                ))
            .toList(),
      ),
    );
  }
}
