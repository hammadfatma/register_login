import 'package:flutter/material.dart';
import 'package:register_login/screens/background.dart';
import 'package:register_login/screens/register.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Text(
              'Sign In',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 36,
                color: Color(0xFF2661FA),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 40),
            child: const TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 40),
            child: const TextField(
              decoration: InputDecoration(
                  labelText: 'Password',
                  suffixIcon: Icon(Icons.visibility_off)),
              obscureText: true,
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: const Text(
              'Forgot Password?',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFF2661FA),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(size.width * 0.5, 50.0),
                alignment: Alignment.center,
                padding: const EdgeInsets.all(0),
                backgroundColor: const Color.fromARGB(255, 255, 177, 34),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
              ),
              child: const Text(
                'Login',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const RegisterScreen()));
              },
              child: const Text(
                'No account yet? Create one',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2661FA),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
