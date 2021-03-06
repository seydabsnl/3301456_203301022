import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/screens/home_page.dart';
import 'package:flutter_application_1/screens/page.dart';
import 'package:flutter_application_1/screens/pdfViewerPage.dart';
import 'package:flutter_application_1/screens/NavBar.dart';
import 'package:flutter_application_1/screens/sqflite.dart';


class homescreen extends StatelessWidget {


  Widget build (BuildContext context){
    var size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: NavBar(),
      body: SingleChildScrollView(
        child: Container(//önünde boşluk
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
           image: AssetImage("assets/images/kapak1.jpg"),
           fit: BoxFit.fill,
           alignment: Alignment.topCenter,
          ),
        ), 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 10,
              height: 10,
            ),
            Text(
              "\n Bugün ne okumak istersin?",
              style: TextStyle(
              fontFamily: 'Satisfy',
              fontSize: 25,
              color: Colors.brown[700]
              ), 
            ), 
            SizedBox(height: 10),
            Container(
              child: Column(
                children: <Widget>[
                  TextField(
                    onChanged: (value){
                    },
                    decoration: InputDecoration(
                      labelText: "Ara",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(width:2),
                    Container(
                      height: 250,//250
                      width: 200,//225
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              height: 220,
                              alignment: Alignment.topLeft,
                              decoration: BoxDecoration(
                                color: Colors.brown[100],
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0,10),
                                    blurRadius: 30,
                                  ),
                                ],
                              ),
                            ),
                          ),
                            Positioned(
                              child: Image.asset("assets/images/5.jpg",
                              width: 250,
                              height: 200,//225
                              alignment: Alignment.topLeft,
                              ),
                            ),
                          Positioned(
                            top: 40,
                            right: 10,
                            child: Column(children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.brown[700],
                                size: 24.0,
                              ),       
                                //onPressed: () {},
                            ],
                            ),
                          ),
                          Positioned(
                            top: 80,
                            right: 10,
                            child: Column(children: <Widget>[
                              Icon(
                                Icons.share,
                                color: Colors.brown[700],
                                size: 24.0,
                              ),       
                                //onPressed: () {},
                            ],
                            ),
                          ),
                          Positioned(
                            top: 200,
                            right: 80,
                            child:Column(children: <Widget>[
                              TextButton(
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(1.0),
                                  primary: Colors.brown[100],
                                  textStyle: const TextStyle(fontSize: 15),
                                  backgroundColor: Colors.brown[700],
                                ),
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => PdfProvider(yol:'assets/cc.pdf'),
                                    ),
                                    );
                                }, 
                                child: const Text("oku"))
                          ],
                          ),
                          ),
          ],
        ),
        ),
                    SizedBox(width:4),
                    Container(
                      height: 250,//250
                      width: 200,//225
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              height: 220,
                              alignment: Alignment.topLeft,
                              decoration: BoxDecoration(
                                color: Colors.brown[100],
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0,10),
                                    blurRadius: 30,
                                  ),
                                ],
                              ),
                            ),
                          ),
                            Positioned(
                              child: Image.asset("assets/images/6.jpg",
                              width: 275,
                              height: 200,//225
                              alignment: Alignment.topLeft,
                              ),
                            ),
                          Positioned(
                            top: 40,
                            right: 10,
                            child: Column(children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.brown[700],
                                size: 24.0,
                              ),       
                                //onPressed: () {},
                            ],
                            ),
                          ),
                          Positioned(
                            top: 80,
                            right: 10,
                            child: Column(children: <Widget>[
                              Icon(
                                Icons.share,
                                color: Colors.brown[700],
                                size: 24.0,
                              ),       
                                //onPressed: () {},
                            ],
                            ),
                          ),
                          Positioned(
                            top: 200,
                            right: 80,
                            child:Column(children: <Widget>[
                              TextButton(
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(1.0),
                                  primary: Colors.brown[100],
                                  textStyle: const TextStyle(fontSize: 15),
                                  backgroundColor: Colors.brown[700],
                                ),
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => PdfProvider(yol: 'assets/dp.pdf'),
                                    ),
                                    );
                                }, 
                                child: const Text("oku"),
                                ),                         
                          ],
                          ),
                          ),
          ],
        ),
        ),
                  ],
                ),
                SizedBox(height: 10),




                Row(
                  children: [
                    SizedBox(width:2),
                    Container(
                      height: 250,//250
                      width: 200,//225
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              height: 220,
                              alignment: Alignment.topLeft,
                              decoration: BoxDecoration(
                                color: Colors.brown[100],
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0,10),
                                    blurRadius: 30,
                                  ),
                                ],
                              ),
                            ),
                          ),
                            Positioned(
                              child: Image.asset("assets/images/9.jpg",
                              width: 250,
                              height: 200,//225
                              alignment: Alignment.topLeft,
                              ),
                            ),
                          Positioned(
                            top: 40,
                            right: 10,
                            child: Column(children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.brown[700],
                                size: 24.0,
                              ),       
                                //onPressed: () {},
                            ],
                            ),
                          ),
                          Positioned(
                            top: 80,
                            right: 10,
                            child: Column(children: <Widget>[
                              Icon(
                                Icons.share,
                                color: Colors.brown[700],
                                size: 24.0,
                              ),       
                                //onPressed: () {},
                            ],
                            ),
                          ),
                          Positioned(
                            top: 200,
                            right: 80,
                            child:Column(children: <Widget>[
                              TextButton(
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(1.0),
                                  primary: Colors.brown[100],
                                  textStyle: const TextStyle(fontSize: 15),
                                  backgroundColor: Colors.brown[700],
                                ),
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                      MaterialPageRoute(builder: (context) => PdfProvider(yol: 'assets/dlp.pdf'),
                                    ),
                                    );
                                }, 
                                child: const Text("oku"))
                          ],
                          ),
                          ),
          ],
        ),
        ),
                    SizedBox(width:4),
                    Container(
                      height: 250,//250
                      width: 200,//225
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              height: 220,
                              alignment: Alignment.topLeft,
                              decoration: BoxDecoration(
                                color: Colors.brown[100],
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0,10),
                                    blurRadius: 30,
                                  ),
                                ],
                              ),
                            ),
                          ),
                            Positioned(
                              child: Image.asset("assets/images/10.jpg",
                              width: 275,
                              height: 200,//225
                              alignment: Alignment.topLeft,
                              ),
                            ),
                          Positioned(
                            top: 40,
                            right: 10,
                            child: Column(children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.brown[700],
                                size: 24.0,
                              ),       
                                //onPressed: () {},
                            ],
                            ),
                          ),
                          Positioned(
                            top: 80,
                            right: 10,
                            child: Column(children: <Widget>[
                              Icon(
                                Icons.share,
                                color: Colors.brown[700],
                                size: 24.0,
                              ),       
                                //onPressed: () {},
                            ],
                            ),
                          ),
                          Positioned(
                            top: 200,
                            right: 80,
                            child:Column(children: <Widget>[
                              TextButton(
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(1.0),
                                  primary: Colors.brown[100],
                                  textStyle: const TextStyle(fontSize: 15),
                                  backgroundColor: Colors.brown[700],
                                ),
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => PdfProvider(yol: 'assets/nn.pdf'),
                                    ),
                                    );
                                }, 
                                child: const Text("oku"),
                                ),                         
                          ],
                          ),
                          ),
          ],
        ),
        ),
                  ],
                ),
                SizedBox(height:10),
                Row(
                  children: [
                    SizedBox(width:2),
                    Container(
                      height: 250,//250
                      width: 200,//225
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              height: 220,
                              alignment: Alignment.topLeft,
                              decoration: BoxDecoration(
                                color: Colors.brown[100],
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0,10),
                                    blurRadius: 30,
                                  ),
                                ],
                              ),
                            ),
                          ),
                            Positioned(
                              child: Image.asset("assets/images/3.jpg",
                              width: 250,
                              height: 200,//225
                              alignment: Alignment.topLeft,
                              ),
                            ),
                          Positioned(
                            top: 40,
                            right: 10,
                            child: Column(children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.brown[700],
                                size: 24.0,
                              ),       
                                //onPressed: () {},
                            ],
                            ),
                          ),
                          Positioned(
                            top: 80,
                            right: 10,
                            child: Column(children: <Widget>[
                              Icon(
                                Icons.share,
                                color: Colors.brown[700],
                                size: 24.0,
                              ),       
                                //onPressed: () {},
                            ],
                            ),
                          ),
                          Positioned(
                            top: 200,
                            right: 80,
                            child:Column(children: <Widget>[
                              TextButton(
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(1.0),
                                  primary: Colors.brown[100],
                                  textStyle: const TextStyle(fontSize: 15),
                                  backgroundColor: Colors.brown[700],
                                ),
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => PdfProvider(yol: 'assets/ns.pdf'),
                                    ),
                                    );
                                }, 
                                child: const Text("oku"))
                          ],
                          ),
                          ),
          ],
        ),
        ),
                    SizedBox(width:4),
                    Container(
                      height: 250,//250
                      width: 200,//225
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              height: 220,
                              alignment: Alignment.topLeft,
                              decoration: BoxDecoration(
                                color: Colors.brown[100],
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0,10),
                                    blurRadius: 30,
                                  ),
                                ],
                              ),
                            ),
                          ),
                            Positioned(
                              child: Image.asset("assets/images/4.jpg",
                              width: 275,
                              height: 200,//225
                              alignment: Alignment.topLeft,
                              ),
                            ),
                          Positioned(
                            top: 40,
                            right: 10,
                            child: Column(children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.brown[700],
                                size: 24.0,
                              ),       
                                //onPressed: () {},
                            ],
                            ),
                          ),
                          Positioned(
                            top: 80,
                            right: 10,
                            child: Column(children: <Widget>[
                              Icon(
                                Icons.share,
                                color: Colors.brown[700],
                                size: 24.0,
                              ),       
                                //onPressed: () {},
                            ],
                            ),
                          ),
                          Positioned(
                            top: 200,
                            right: 80,
                            child:Column(children: <Widget>[
                              TextButton(
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(1.0),
                                  primary: Colors.brown[100],
                                  textStyle: const TextStyle(fontSize: 15),
                                  backgroundColor: Colors.brown[700],
                                ),
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => PdfProvider(yol: 'assets/dlpp.pdf'),
                                    ),
                                    );
                                }, 
                                child: const Text("oku"),
                                ),                         
                          ],
                          ),
                          ),
          ],
        ),
        ),
                  ],
                ),
                SizedBox(height:10),
                Row(
                  children: [
                    SizedBox(width:2),
                    Container(
                      height: 250,//250
                      width: 200,//225
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              height: 220,
                              alignment: Alignment.topLeft,
                              decoration: BoxDecoration(
                                color: Colors.brown[100],
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0,10),
                                    blurRadius: 30,
                                  ),
                                ],
                              ),
                            ),
                          ),
                            Positioned(
                              child: Image.asset("assets/images/1.jpg",
                              width: 250,
                              height: 200,//225
                              alignment: Alignment.topLeft,
                              ),
                            ),
                          Positioned(
                            top: 40,
                            right: 10,
                            child: Column(children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.brown[700],
                                size: 24.0,
                              ),       
                                //onPressed: () {},
                            ],
                            ),
                          ),
                          Positioned(
                            top: 80,
                            right: 10,
                            child: Column(children: <Widget>[
                              Icon(
                                Icons.share,
                                color: Colors.brown[700],
                                size: 24.0,
                              ),       
                                //onPressed: () {},
                            ],
                            ),
                          ),
                          Positioned(
                            top: 200,
                            right: 80,
                            child:Column(children: <Widget>[
                              TextButton(
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(1.0),
                                  primary: Colors.brown[100],
                                  textStyle: const TextStyle(fontSize: 15),
                                  backgroundColor: Colors.brown[700],
                                ),
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => PdfProvider(yol: 'assets/do.pdf'),
                                    ),
                                    );
                                }, 
                                child: const Text("oku"))
                          ],
                          ),
                          ),
          ],
        ),
        ),
                    SizedBox(width:4),
                    Container(
                      height: 250,//250
                      width: 200,//225
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              height: 220,
                              alignment: Alignment.topLeft,
                              decoration: BoxDecoration(
                                color: Colors.brown[100],
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0,10),
                                    blurRadius: 30,
                                  ),
                                ],
                              ),
                            ),
                          ),
                            Positioned(
                              child: Image.asset("assets/images/2.jpg",
                              width: 275,
                              height: 200,//225
                              alignment: Alignment.topLeft,
                              ),
                            ),
                          Positioned(
                            top: 40,
                            right: 10,
                            child: Column(children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.brown[700],
                                size: 24.0,
                              ),       
                                //onPressed: () {},
                            ],
                            ),
                          ),
                          Positioned(
                            top: 80,
                            right: 10,
                            child: Column(children: <Widget>[
                              Icon(
                                Icons.share,
                                color: Colors.brown[700],
                                size: 24.0,
                              ),       
                                //onPressed: () {},
                            ],
                            ),
                          ),
                          Positioned(
                            top: 200,
                            right: 80,
                            child:Column(children: <Widget>[
                              TextButton(
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(1.0),
                                  primary: Colors.brown[100],
                                  textStyle: const TextStyle(fontSize: 15),
                                  backgroundColor: Colors.brown[700],
                                ),
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => PdfProvider(yol: 'assets/do.pdf'),
                                    ),
                                    );
                                }, 
                                child: const Text("oku"),
                                ),                         
                          ],
                          ),
                          ),
          ],
        ),
        ),
                  ],
                ),


              ],
            ),
          ]
        ),
        ),
      ),
      );
  }
}