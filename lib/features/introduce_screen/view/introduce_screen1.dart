import 'package:flutter/material.dart';
import 'package:hiiiiiiii/routes/routes_constants.dart';
import 'package:hiiiiiiii/services/navigation_services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SizedBox(
        width: 390, // Fixed width
        height: 282, // Fixed height
        child: IntroduceScreen1(),
      ),
    );
  }
}

class IntroduceScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Define the fixed screen width and height
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/Rectangle 3656.png', // Add the first image here
              fit: BoxFit.cover,
            ),
          ),
          // Welcome Card
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: screenWidth,
              decoration: BoxDecoration(
                color: Colors.purple.withOpacity(0.9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.05,
                  vertical: screenHeight * 0.03,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Welcome Text
                    Column(
                      children: [
                        Text(
                          "Welcome !",
                          style: TextStyle(
                            fontSize: screenWidth * 0.07,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        Text(
                          "Experience a wonderful moment with Ciao",
                          style: TextStyle(
                            fontSize: screenWidth * 0.045,
                            color: Colors.white.withOpacity(0.9),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    // Get Started Button
                    ElevatedButton(
                      onPressed: () {
                        NavigationServices().navigateTo(RoutesConstants.signIn);
                        // Add your action here
                        print("Get Started button pressed!");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Button color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.02,
                          horizontal: screenWidth * 0.2,
                        ),
                      ),
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          fontSize: screenWidth * 0.045,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}