// lib/screens/registration_screen.dart
import 'package:flutter/material.dart';
import 'chat_screen.dart'; // Importez le fichier ChatScreen
import '../widgets/my_button.dart';

class RegistrationScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat App'),
      ),
      body: SingleChildScrollView(
        child: Center(
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Entrer votre email',
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Entrer votre password',
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              MyButton(
                text: 'Register',
                onPressed: () {
                  // Vérifiez si les champs email et password ne sont pas vides
                  if (emailController.text.isNotEmpty &&
                      passwordController.text.isNotEmpty) {
                    // Naviguer vers l'écran ChatScreen
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ChatScreen()));
                  } else {
                    // Affichez un message d'erreur si les champs sont vides
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Erreur'),
                        content: Text('Veuillez remplir tous les champs.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('OK'),
                          ),
                        ],
                      ),
                    );
                  }
                },
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
