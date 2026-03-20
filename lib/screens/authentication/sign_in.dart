import '../../services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthServices _auth = AuthServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SIGN IN')),
      body: ElevatedButton(
        child: const Text('Sign In Anonymously'),
        onPressed: () async { 
          dynamic result = await _auth.signInAnonymously();
          if (result == null) {
            print('Error in  sign in anon');
          } else {
            print('Signed in anon');
            print(result.uid);
          }
        },
      ),
    );
  }
}
