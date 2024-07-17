import 'package:chat/components/my_button.dart';
import 'package:chat/components/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  LoginPage({super.key});
  void login(){

  }
  
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
            "Welcome back, you've been missed",
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
           const SizedBox(height: 25),

           MyButton(
            text: "Login",
            onTap: login,
           ),

           const SizedBox(height: 25),

           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Not a member? "),
              Text("Register now", style: TextStyle(
                fontWeight: FontWeight.bold
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