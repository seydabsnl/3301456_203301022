import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/screens/clock.dart';
import 'package:flutter_application_1/screens/sqflite.dart';
import 'package:flutter_application_1/weather/weather.dart';
import 'package:sqflite/sqflite.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          SizedBox(height: 20),
          Divider(),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Okuma Listem'),
            onTap: () => null,
          ),
          
          ListTile(
            leading: Icon(Icons.graphic_eq),
            title: Text('Etkinliğim'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.note),
            title: Text('Notlarım'),
            onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context){
                      return MyApp1();
                    },
                  ),
                );
              },
            //onTap: () => Sqflite(),
          ),
          
          ListTile(
            leading: Icon(Icons.lock_clock),
            title: Text('Kronometre'),
            //onTap: () => null,
            onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context){
                      return MyApp3();
                    },
                  ),
                );
              },
          ),
          ListTile(
            leading: Icon(Icons.cloud),
            title: Text('Hava Durumu'),
            //onTap: () => null,
            onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context){
                      return Weather();
                    },
                  ),
                );
              },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.adjust),
            title: Text('Ayarlar'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            title: Text('Çıkış'),
            leading: Icon(Icons.exit_to_app),
            //onTap: () => null,
            onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context){
                      return MyApp();
                    },
                  ),
                );
              },
          ),
        ],
      ),
    );
  }
}