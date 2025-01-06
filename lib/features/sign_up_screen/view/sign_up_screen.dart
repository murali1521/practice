import 'package:flutter/material.dart';
import 'package:hiiiiiiii/services/navigation_services.dart';
import 'package:hiiiiiiii/widgets/customelevatedbutton.dart';
import 'package:hiiiiiiii/widgets/customtextformfield.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final TextEditingController birthDateController = TextEditingController();
  final ValueNotifier<String> selectedGender = ValueNotifier<String>('Male');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Sign up',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),
                const SizedBox(height: 20),
                CustomTextFormField(
                  controller: firstNameController,
                  hintText: 'First name',
                  borderColor: Colors.purple,
                  textColor: Colors.black,
                  hintColor: Colors.grey,
                ),
                const SizedBox(height: 15),
                CustomTextFormField(
                  controller: lastNameController,
                  hintText: 'Last name',
                  borderColor: Colors.purple,
                  textColor: Colors.black,
                  hintColor: Colors.grey,
                ),
                const SizedBox(height: 15),
                CustomTextFormField(
                  controller: emailController,
                  hintText: 'Email/phone number',
                  textInputType: TextInputType.emailAddress,
                  borderColor: Colors.purple,
                  textColor: Colors.black,
                  hintColor: Colors.grey,
                ),
                const SizedBox(height: 15),
                CustomTextFormField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                  suffix: Icon(Icons.visibility, color: Colors.grey),
                  borderColor: Colors.purple,
                  textColor: Colors.black,
                  hintColor: Colors.grey,
                ),
                const SizedBox(height: 15),
                CustomTextFormField(
                  controller: confirmPasswordController,
                  hintText: 'Confirm Password',
                  obscureText: true,
                  suffix: Icon(Icons.visibility, color: Colors.grey),
                  borderColor: Colors.purple,
                  textColor: Colors.black,
                  hintColor: Colors.grey,
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextFormField(
                        controller: birthDateController,
                        hintText: 'Date/month',
                        textInputType: TextInputType.datetime,
                        borderColor: Colors.purple,
                        textColor: Colors.black,
                        hintColor: Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: CustomTextFormField(
                        hintText: 'Year',
                        textInputType: TextInputType.number,
                        borderColor: Colors.purple,
                        textColor: Colors.black,
                        hintColor: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                ValueListenableBuilder(
                  valueListenable: selectedGender,
                  builder: (context, value, child) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ChoiceChip(
                          label: const Text('Male'),
                          selected: value == 'Male',
                          onSelected: (isSelected) =>
                              selectedGender.value = isSelected ? 'Male' : value,
                        ),
                        ChoiceChip(
                          label: const Text('Female'),
                          selected: value == 'Female',
                          onSelected: (isSelected) =>
                              selectedGender.value = isSelected ? 'Female' : value,
                        ),
                        ChoiceChip(
                          label: const Text('Others'),
                          selected: value == 'Others',
                          onSelected: (isSelected) =>
                              selectedGender.value = isSelected ? 'Others' : value,
                        ),
                      ],
                    );
                  },
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                      activeColor: Colors.purple,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'I Agree with ',
                        style: const TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                            text: 'privacy',
                            style: const TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          const TextSpan(text: ' and '),
                          TextSpan(
                            text: 'policy',
                            style: const TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                CustomElevatedButton(
                  text: 'Sign up',
                  buttonColor: Colors.purple,
                  textColor: Colors.white,
                  onPressed: () {
                    NavigationServices().goBack();
                    // Handle sign-up logic
                  },
                ),
                const SizedBox(height: 20),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already have an account? '),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Sign in',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
