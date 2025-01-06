import 'package:flutter/material.dart';
import 'package:hiiiiiiii/routes/routes_constants.dart';
import 'package:hiiiiiiii/services/navigation_services.dart';
import 'package:hiiiiiiii/utilis/image_constants.dart';
import 'package:hiiiiiiii/widgets/customelevatedbutton.dart';
import 'package:hiiiiiiii/widgets/customtextformfield.dart';

// class ImageConstants {
//   static const String imgVietnamFlag = 'assets/Rectangle 3656.png';
//   static const String keyboardImage = 'assets/AlphabeticKeyboard.png';
// }

class VerifyPhoneScreen extends StatelessWidget {
  VerifyPhoneScreen({Key? key}) : super(key: key);

  final TextEditingController phoneNumberController = TextEditingController();

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
                    "Verify your number",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Please enter your Country & your phone number.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Image.asset(
                        ImageConstants.flag,
                        height: 24,
                        width: 24,
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        "+84",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: CustomTextFormField(
                          controller: phoneNumberController,
                          hintText: "Enter phone number",
                          textInputType: TextInputType.phone,
                          borderColor: Colors.white,
                          textColor: Colors.white,
                          hintColor: Colors.white70,
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomElevatedButton(
                text: "Next",
                buttonColor: Colors.purple.shade400,
                textColor: Colors.white,
                borderRadius: 25.0,
                onPressed: () {
                  NavigationServices().navigateTo(RoutesConstants.code);
                  // Handle next action
                },
              ),
            ),
            const SizedBox(height: 20),
            Image.asset(
              ImageConstants.num_keyboard,
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
//     home: VerifyPhoneScreen(),
//     debugShowCheckedModeBanner: false,
//   ));
// }
