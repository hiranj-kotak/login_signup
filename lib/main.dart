import 'package:flutter/material.dart';
import 'package:login_signup/signup.dart';

void main() {
  runApp(const MYAPP());
}

class MYAPP extends StatelessWidget {
  const MYAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignupPage(),
    );
  }
}
