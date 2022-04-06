import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/categories.dart';


class yourfavourites extends StatelessWidget {
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20),
                child: Row(
                  children: <Widget>[
                    Expanded(child: Column(
                      children: <Widget>[
                        Text("Neural Networks: A Visual Introduction for Beginners",
                          style: TextStyle(
                          fontFamily: 'Satisfy',
                          fontSize: 25,
                          color: Colors.brown[700]
                        ),
                        ),
                      ],
                    ),
                    ),
                    Image.asset("assets/images/10.jpg",
                    width: 100,
                    height: 100,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      primary: Colors.brown[100],
                      textStyle: const TextStyle(fontSize: 15),
                      backgroundColor: Colors.brown[700],
                    ),
                    onPressed: (){},
                    child: const Text('remove')
                    ),
                  ],
                ),  
            ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20),
                child: Row(
                  children: <Widget>[
                    Expanded(child: Column(
                      children: <Widget>[
                        Text("Introduction to Machine Learning with Python: A Guide for Data Scientists",
                        style: TextStyle(
                        fontFamily: 'Satisfy',
                        fontSize: 25,
                        color: Colors.brown[700]
                        ),
                        ),
                      ],
                    ),
                    ),
                    Image.asset("assets/images/9.jpg",
                    width: 100,
                    height:100,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      primary: Colors.brown[100],
                      textStyle: const TextStyle(fontSize: 15),
                      backgroundColor: Colors.brown[700],
                    ),
                    onPressed: (){},
                    child: const Text('remove')
                    ),
                  ],
                ),  
            ),
            SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20),
                child: Row(
                  children: <Widget>[
                    Expanded(child: Column(
                      children: <Widget>[
                        Text("Python Crash Course - A Hands-On, Project-Based Introduction to Programming",
                        style: TextStyle(
                        fontFamily: 'Satisfy',
                        fontSize: 25,
                        color: Colors.brown[700]
                        ),
                        ),
                      ],
                    ),
                    ),
                    Image.asset("assets/images/2.jpg",
                    width: 100,
                    height:100,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      primary: Colors.brown[100],
                      textStyle: const TextStyle(fontSize: 15),
                      backgroundColor: Colors.brown[700],
                    ),
                    onPressed: (){},
                    child: const Text('remove')
                    ),
                  ],
                ),  
            ),
          ],
          ),
      ),
      );
  }
}
