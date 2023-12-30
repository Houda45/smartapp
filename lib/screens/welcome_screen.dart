// lib/screens/welcome_screen.dart
import 'package:flutter/material.dart';
import 'signin_screen.dart'; // Importez le fichier SignInScreen
import 'registration_screen.dart'; // Importez le fichier RegistrationScreen
import '../widgets/my_button.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/logo.png',
              width: 150.0,
              height: 150.0,
            ),
            SizedBox(height: 20.0),
            Text(
              'Bienvenue sur Chat App!',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 20.0),
            MyButton(
              text: 'Sign In',
              onPressed: () {
                // Naviguer vers l'écran SignInScreen
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInScreen()));
              },
              color: Colors.green,
            ),
            SizedBox(height: 10.0),
            MyButton(
              text: 'Register',
              onPressed: () {
                // Naviguer vers l'écran RegistrationScreen
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RegistrationScreen()));
              },
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
