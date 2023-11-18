import 'package:flutter/material.dart';
import 'package:register_login/screens/background.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: const Text(
                'Sign Up',
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
                decoration: InputDecoration(labelText: 'Name'),
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
                  'Register',
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
                  Navigator.pop(context);
                },
                child: const Text(
                  '<- Back to login',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2661FA),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
