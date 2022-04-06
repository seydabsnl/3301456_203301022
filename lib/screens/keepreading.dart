import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/categories.dart';


class keepreading extends StatelessWidget {
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
                        Text("Artificial Intelligence An Illustrated History From Medieval Robots to Neural Networks Sterling",
                          style: TextStyle(
                          fontFamily: 'Satisfy',
                          fontSize: 25,
                          color: Colors.brown[700]
                        ),
                        ),
                      ],
                    ),
                    ),
                    Image.asset("assets/images/5.jpg",
                    width: 100,
                    height: 100,)
                  ],
                ),  
            ),
            Container(
              height: 7,
              width:65,
              decoration: BoxDecoration(color: Colors.brown[500],
              borderRadius: BorderRadius.circular(7),
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
                        Text("Artificial Intelligence with Python",
                        style: TextStyle(
                        fontFamily: 'Satisfy',
                        fontSize: 25,
                        color: Colors.brown[700]
                        ),
                        ),
                      ],
                    ),
                    ),
                    Image.asset("assets/images/6.jpg",
                    width: 100,
                    height:100,)
                  ],
                ),  
            ),
            Container(
              height: 7,
              width:200,
              decoration: BoxDecoration(color: Colors.brown[500],
              borderRadius: BorderRadius.circular(7),
              ),
            ),
          ],
          ),
      ),
      );
  }
}

      