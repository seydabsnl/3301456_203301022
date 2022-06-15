import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/pdfViewerPage.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
//import 'package:pdfviewexample/pdfViewerPage.dart';
import 'package:flutter_application_1/screens/ApiServiceProvider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  late String filePath;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: PdfViewerPage(),
    );
  }
}
