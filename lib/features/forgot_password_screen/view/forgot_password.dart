import 'package:flutter/material.dart';
import 'package:hiiiiiiii/widgets/customelevatedbutton.dart';
import 'package:hiiiiiiii/widgets/customtextformfield.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Stack(
          children: [
            // Main Content
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () {
                      Navigator.pop(context); // Navigate back
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Forgot password?',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Enter your email and we’ll send you the instructions on how to reset your password.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 30),
                  CustomTextFormField(
                    controller: emailController,
                    hintText: 'Enter your email address',
                    textInputType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                    borderColor: Colors.purple,
                    textColor: Colors.black,
                    hintColor: Colors.grey,
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: CustomElevatedButton(
                      text: 'Recover Password',
                      buttonColor: Colors.purple,
                      textColor: Colors.white,
                      onPressed: () {
                        // Handle password recovery logic
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text("Password Recovery"),
                            content: const Text(
                                "Instructions to reset your password have been sent to your email."),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text("OK"),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            // Custom Keyboard Image
            Align(
              alignment: Alignment.bottomCenter,
              
              child: Image.asset(
                'assets/AlphabeticKeyboard.png', // Replace with the correct path to your image
                fit: BoxFit.cover,
                // width: MediaQuery.of(context).size.width,
                width: 390,
                height: 288, // Adjust height as needed
              ),
            ),
          ],
        ),
      ),
    );
  }
}
