import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/login.dart';
import 'package:flutter_application_1/screens/yourfavourites.dart';
import 'package:flutter_application_1/screens/register.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}


//void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'e-kütüphane',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.brown,
          ),
          home: WelcomeScreen()
        );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/kapak.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "E-Kütüphane",
              style: TextStyle(
              fontFamily: 'Satisfy',
              fontSize: 60,
              color: Colors.brown[700]
              ), 
            ), 
            Button()
          ],
        ),
      ),
    );
  }
}
class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);
   @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(16.0),
              primary: Colors.brown[100],
              textStyle: const TextStyle(fontSize: 20),
              backgroundColor: Colors.brown[700],
              ),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context){
                    return LoginPage(); //categories //LoginPage
                  },
                  ),
                );
              },
              child: const Text('Başla')
          ),
        ],
      ),
    );
  }
}








