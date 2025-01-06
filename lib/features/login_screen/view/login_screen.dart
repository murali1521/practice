import 'package:flutter/material.dart';
import 'package:hiiiiiiii/routes/routes_constants.dart';
import 'package:hiiiiiiii/services/navigation_services.dart';
import 'package:hiiiiiiii/utilis/image_constants.dart';
import 'package:hiiiiiiii/widgets/customelevatedbutton.dart';
import 'package:hiiiiiiii/widgets/customimageview.dart';
import 'package:hiiiiiiii/widgets/customtextformfield.dart';


class SignInScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF7B61FF),
              Color(0xFFCBA9F7),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // App Logo or Text
              Text(
                "Ciao",
                style: TextStyle(
                  fontSize: 128,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Cursive",
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              // Sign-in Title
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Sign in",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Email/Phone Number Text Field
              CustomTextFormField(
                controller: emailController,
                hintText: "Email/phone number",
                textInputType: TextInputType.emailAddress,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                borderColor: Colors.white,
                textColor: Colors.white,
                hintColor: Colors.white70,
              ),
              const SizedBox(height: 16),
              // Password Text Field
              CustomTextFormField(
                controller: passwordController,
                hintText: "Password",
                textInputType: TextInputType.visiblePassword,
                obscureText: true,
                // suffix: CustomImageView(
                //   imagePath: ImageConstants.imgEye,
                //   height: 20,
                //   width: 20,
                // ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                borderColor: Colors.white,
                textColor: Colors.white,
                hintColor: Colors.white70,
              ),
              const SizedBox(height: 16),
              // Remember Me and Forgot Password Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                        activeColor: Colors.white,
                        checkColor: Colors.purple,
                      ),
                      const Text(
                        "Remember me",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      NavigationServices().navigateTo(RoutesConstants.forgotPassword);
                      // Add Forgot Password logic
                    },
                    child: const Text(
                      "Forgot password?",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Sign-in Button
              CustomElevatedButton(
                text: "Sign in",
                onPressed: () {
                  // Add Sign-In logic
                },
                buttonColor: Colors.purple.shade800,
                textColor: Colors.white,
              ),
              const SizedBox(height: 20),
              // Or Sign in with Text
              const Text(
                "Or sign in with",
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 20),
              // Social Media Icons Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstants.imgFacebook,
                    height: 32,
                    width: 32,
                  ),
                  const SizedBox(width: 16),
                  CustomImageView(
                    imagePath: ImageConstants.imgTwitter,
                    height: 32,
                    width: 32,
                  ),
                  const SizedBox(width: 16),
                  CustomImageView(
                    imagePath: ImageConstants.imgGoogle,
                    height: 32,
                    width: 32,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Don't have an account? Sign Up Section
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don’t have an account?",
                    style: TextStyle(color: Colors.white),
                  ),
                  GestureDetector(
                    onTap: () {
                      NavigationServices().navigateTo(RoutesConstants.signUp);
                      // Add Sign-Up navigation logic
                    },
                    child: const Text(
                      " Sign up",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
