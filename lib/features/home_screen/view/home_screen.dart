import 'package:flutter/material.dart';
import 'package:hiiiiiiii/routes/routes_constants.dart';
import 'package:hiiiiiiii/services/navigation_services.dart';
import 'package:hiiiiiiii/widgets/postcard.dart';
import 'package:hiiiiiiii/widgets/storycircle.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade200,
      appBar: AppBar(
        backgroundColor: Colors.purple.shade200,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Icon(Icons.search, color: Colors.white, size: 28),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.notifications, color: Colors.white, size: 28),
          ),
        ],
        title: TextField(
          decoration: InputDecoration(
            hintText: "Explore",
            hintStyle: const TextStyle(color: Colors.white70),
            filled: true,
            fillColor: Colors.purple.shade300,
            contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide.none,
            ),
            prefixIcon: const Icon(Icons.search, color: Colors.white),
          ),
        ),
      ),
      body: Column(
        children: [
          // Stories Section
          SizedBox(
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              itemCount: 5,
              separatorBuilder: (context, index) => const SizedBox(width: 12.0),
              itemBuilder: (context, index) {
                final stories = [
              
                StoryCircle(imagePath: 'assets/Ellipse 221.png', username: 'You', isAdd: true),
                StoryCircle(imagePath: 'assets/Ellipse 221 (1).png', username: 'Edein'),
                StoryCircle(imagePath: 'assets/Ellipse 221 (2).png', username: 'Sumei'),
                StoryCircle(imagePath: 'assets/Ellipse 221 (3).png', username: 'Dicak'),
                StoryCircle(imagePath: 'assets/Ellipse 221 (4).png', username: 'Vilen'),
              ];
              return stories[index];
              },
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              children: const [
                PostCard(
                  profileImage: 'assets/Ellipse 221 (5).png',
                  username: 'Edein Vindain',
                  timeAgo: '5 minute',
                  postText: "This is a beautiful sky that I took last week. It's great, right? :)",
                  hashtags: "#Beauty #Nature #Cloud",
                  postImage: 'assets/Rectangle 3301.png',
                  likes: 999,
                  comments: 320,
                ),
                SizedBox(height: 20),
                PostCard(
                  profileImage: 'assets/Ellipse 221 (6).png',
                  username: 'Dian Cinne',
                  timeAgo: '10 minute',
                  postText: "Another awesome day! 🌸",
                  hashtags: "#Blossom #Vibes",
                  postImage: 'assets/blossom.png',
                  likes: 450,
                  comments: 120,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.purple.shade300,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(Icons.home, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.comment, color: Colors.white),
                onPressed: () {
                  NavigationServices().navigateTo(RoutesConstants.comment);
                },
              ),
              const SizedBox(width: 40), // Space for the FAB
              IconButton(
                icon: const Icon(Icons.notifications_on, color: Colors.white),
                onPressed: () {
                  NavigationServices().navigateTo(RoutesConstants.notification);
                },
              ),
              IconButton(
                icon: const Icon(Icons.person, color: Colors.white),
                onPressed: () {
                  NavigationServices().navigateTo(RoutesConstants.profile);
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple.shade400,
        child: const Icon(Icons.add, color: Colors.white),
        onPressed: () {
          // Add new post action
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}



// void main() {
//   runApp(const MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: ExploreScreen(),
//   ));
// }
