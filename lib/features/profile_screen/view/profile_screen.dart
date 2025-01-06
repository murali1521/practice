import 'package:flutter/material.dart';
import 'package:hiiiiiiii/widgets/bottomnavigationbarm1.dart';
import 'package:hiiiiiiii/widgets/customelevatedbutton.dart';
import 'package:hiiiiiiii/widgets/customimageview.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade100,
      body: Column(
        children: [
          // Top Profile Section
          Stack(
            children: [
              CustomImageView(
                imagePath: 'assets/profile_background.png', // Background Image
                height: 200,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 50,
                left: 16,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/profile_profile.png'), // Profile Picture
                  radius: 48,
                ),
              ),
              Positioned(
                top: 50,
                right: 16,
                child: Icon(Icons.menu, color: Colors.white, size: 28),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'David Wilden',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple.shade700,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '@David_123',
                  style: TextStyle(color: Colors.purple.shade500, fontSize: 14),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          '146',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.purple.shade700,
                          ),
                        ),
                        Text(
                          'Posts',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.purple.shade500,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '12k',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.purple.shade700,
                          ),
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.purple.shade500,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '200',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.purple.shade700,
                          ),
                        ),
                        Text(
                          'Following',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.purple.shade500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomElevatedButton(
                      text: 'Follow',
                      buttonColor: Colors.purple.shade400,
                      textColor: Colors.white,
                      onPressed: () {},
                    ),
                    CustomElevatedButton(
                      text: 'Message',
                      buttonColor: Colors.white,
                      textColor: Colors.purple.shade400,
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  '"I can draw my life by myself"',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.purple.shade700,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
          // Posts Section
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: 6, // Replace with your post count
              itemBuilder: (context, index) {
                return CustomImageView(
                  imagePath: 'assets/Frame 3727.png', // Replace with post images
                  radius: BorderRadius.circular(8),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: const Bottomnavigationbarm1(),
    );
  }
}
