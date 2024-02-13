import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/logos.dart';

class LoginPage extends StatelessWidget {
  static const String routeName = "/login";
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double topPadding = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: topPadding,
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new),
              style: IconButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: const BorderSide(color: Color(0xFFE8ECF4), width: 1),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Welcome back! Glad\nto see you, Again!",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  height: 1.3,
                  letterSpacing: -.3),
            ),
            const SizedBox(
              height: 30,
            ),
            textf(hint: "Enter your email"),
            const SizedBox(
              height: 20,
            ),
            textf(hint: "Enter your password"),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Color(0xFF6A707C),
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            blackButton(context, MediaQuery.of(context).size.width),
            const SizedBox(
              height: 40,
            ),
            const Row(
              children: [
                Expanded(
                  child: Divider(color: Color(0xffE8ECF4)),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Or Login with",
                  style: TextStyle(
                    color: Color(0xFF6A707C),
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Divider(color: Color(0xffE8ECF4)),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Iconify(
                  Logos.google_icon,
                  size: 40,
                ),
                Iconify(
                  Logos.facebook,
                  size: 40,
                ),
                Iconify(
                  Logos.apple,
                  size: 40,
                )
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(
                    color: Color(0xFF6A707C),
                    fontSize: 15,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Color(0xFF35C2C1),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }

  TextField textf({required String hint}) {
    return TextField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: Color(0xFFE8ECF4), width: 1),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: Color(0xFFE8ECF4), width: 1),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: Color(0xFFE8ECF4), width: 1),
        ),
        hintText: hint,
        fillColor: const Color(0xFFF7F8F9),
        filled: true,
      ),
    );
  }

  ElevatedButton blackButton(BuildContext context, double width) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        minimumSize: Size(width * 0.95, 55),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: const Text(
        "Login",
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
      ),
    );
  }
}
