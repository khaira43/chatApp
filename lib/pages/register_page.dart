import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_textfield.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _confirmPwController = TextEditingController();
  RegisterPage({super.key});

  void register() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
           ),
           const SizedBox(height: 50),
           Text(
            "Let's create an account for you",
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 16,

            ),
           ),
           const SizedBox(height: 25),
           MyTextField(
            hintText: "Email",
            obscureText: false,
            controller: _emailController,
           ),
           const SizedBox(height: 10),
           MyTextField(
            hintText: "Password",
            obscureText: true,
            controller: _pwController,
           ),
           const SizedBox(height: 10),
           MyTextField(
            hintText: "Confirm password",
            obscureText: true,
            controller: _confirmPwController,
           ),
           const SizedBox(height: 25),

           MyButton(
            text: "Register",
            onTap: register,
           ),

           const SizedBox(height: 25),

           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account? ",
                style: TextStyle(color: Theme.of(context).colorScheme.primary),

              ),
              Text(
                "Login now", 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),

            ],

           ),

          
           

          ],
        ),
      ),
    );
  }
}