import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/page.dart';
class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: GridView.extent(
          primary: false,
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          maxCrossAxisExtent: 150,
          children: <Widget>[
            TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      )),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10)),
                  textStyle: MaterialStateProperty.all(
                      const TextStyle(fontSize: 15))),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>PdfProvider(yol:'assets/cc.pdf')),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'a',
                  style: TextStyle(color: Colors.black, fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      )),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10)),
                  textStyle: MaterialStateProperty.all(
                      const TextStyle(fontSize: 15))),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>PdfProvider(yol:'assets/dp.pdf')),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'b',
                  style: TextStyle(color: Colors.black, fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      )),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10)),
                  textStyle: MaterialStateProperty.all(
                      const TextStyle(fontSize: 15))),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>PdfProvider(yol: 'assets/c.pdf')),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'c',
                  style: TextStyle(color: Colors.black, fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
