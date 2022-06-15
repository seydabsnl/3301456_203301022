import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/ApiServiceProvider.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
//import 'package:flutter_pathprovider/ApiServiceProvider.dart';
import 'package:flutter_application_1/screens/ApiServiceProvider.dart';




class PdfViewerPage extends StatefulWidget {
  @override
  _PdfViewerPageState createState() => _PdfViewerPageState();
}

class _PdfViewerPageState extends State<PdfViewerPage> {
  String? localPath; //late String localPath

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    ApiServiceProvider.loadPDF().then((value) { //ApiServiceProvider
      setState(() {
        localPath = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[700],
        title: Text("",style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: localPath != null
          ? PDFView(
              filePath: localPath,
            )
          : Center(child: CircularProgressIndicator()),
    );
  }
}