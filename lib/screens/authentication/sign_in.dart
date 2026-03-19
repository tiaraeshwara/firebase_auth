import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});
  
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SIGN IN'),
      ) ,
      body: ElevatedButton(
        child: const Text('Sign In Anonymously'),
        onPressed: () {}
          
      ),
    );
  }
}