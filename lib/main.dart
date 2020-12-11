import 'package:flutter/material.dart';
import 'package:flutter_chat_app/screens/chat_screen.dart';
import 'package:flutter_chat_app/screens/login_screen.dart';
import 'package:flutter_chat_app/screens/registration_screen.dart';
import 'package:flutter_chat_app/screens/welcome_screen.dart';


void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: 'WelcomeScreen',
      routes: {
        'WelcomeScreen':(context)=> WelcomeScreen(),
        'LoginScreen':(context)=> LoginScreen(),
        'RegistrationScreen':(context)=> RegistrationScreen(),
        'ChatScreen':(context)=> ChatScreen(),
      },
    );
  }
}
