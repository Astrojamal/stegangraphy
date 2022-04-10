import 'package:flutter/material.dart';
import 'package:steganography/screens/login_screen.dart';
import 'package:steganography/screens/registration_screen.dart';
import 'package:steganography/screens/welcome_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stegangraphyo ',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  welcomeScreen(),
    );
  }
}
