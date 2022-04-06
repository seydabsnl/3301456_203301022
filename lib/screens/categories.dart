import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/homescreen.dart';
import 'package:flutter_application_1/screens/keepreading.dart';
import 'package:flutter_application_1/screens/yourfavourites.dart';


class categories extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/kapak1.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              "\nMenu\n",
              style: TextStyle(
              fontFamily: 'Satisfy',
              fontSize: 40,
              color: Colors.brown[700]
              ), 
            ), 
            Button1(),
            SizedBox(height: 20),
            Button5(),
            SizedBox(height: 20),
            Button6(),
            SizedBox(height: 20),
            Button2(),
          ],
        ),
      ),
    );
  }
}
class Button1 extends StatelessWidget {
  const Button1({Key? key}) : super(key: key);
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
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context){
                      return homescreen();
                    },
                  ),
                );
              },
              child: const Text('  Books  ')
          ),
        ],
      ),
    );
  }
}
class Button5 extends StatelessWidget {
  const Button5({Key? key}) : super(key: key);
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
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context){
                      return keepreading();
                    },
                  ),
                );
              },
              child: const Text('  keep reading  ')
          ),
        ],
      ),
    );
  }
}
class Button6 extends StatelessWidget {
  const Button6({Key? key}) : super(key: key);
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
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context){
                      return yourfavourites();
                    },
                  ),
                );
              },
              child: const Text('  your favorites  ')
          ),
        ],
      ),
    );
  }
}
class Button2 extends StatelessWidget {
  const Button2({Key? key}) : super(key: key);
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
              onPressed: () {},
              child: const Text('  Upload Book  ')
          ),
        ],
      ),
    );
  }
}
