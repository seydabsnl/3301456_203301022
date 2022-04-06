import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/categories.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'e-library',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
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
              "e-library",
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
                    return categories();
                  },
                  ),
                );
              },
              child: const Text('start learning')
          ),
        ],
      ),
    );
  }
}








