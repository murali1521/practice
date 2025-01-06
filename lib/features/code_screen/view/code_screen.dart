import 'package:flutter/material.dart';
import 'package:hiiiiiiii/routes/routes_constants.dart';
import 'package:hiiiiiiii/services/navigation_services.dart';
import 'package:hiiiiiiii/utilis/image_constants.dart';
import 'package:hiiiiiiii/widgets/codeinputfield.dart';

class CodeScreen extends StatelessWidget {
  CodeScreen({Key? key}) : super(key: key);

  final TextEditingController codeController1 = TextEditingController();
  final TextEditingController codeController2 = TextEditingController();
  final TextEditingController codeController3 = TextEditingController();
  final TextEditingController codeController4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade200,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () {
                          // Handle back action
                        },
                      ),
                      const Spacer(),
                    ],
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    "Enter code",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Enter the 4-digit code we sent you at",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "+8462839979",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CodeInputField(controller: codeController1),
                      CodeInputField(controller: codeController2),
                      CodeInputField(controller: codeController3),
                      CodeInputField(controller: codeController4),
                    ],
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple.shade400,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                onPressed: () {
                  NavigationServices().navigateTo(RoutesConstants.home);
                  // Handle next action
                },
                child: const Text(
                  "Next",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Image.asset(
              ImageConstants.num_keyboard, // Use your keyboard image path
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}

// void main() {
//   runApp(const MaterialApp(
//     home: EnterCodeScreen(),
//     debugShowCheckedModeBanner: false,
//   ));
// }
